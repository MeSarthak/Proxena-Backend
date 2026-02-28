import { IncomingMessage } from 'http';
import WebSocket, { WebSocketServer } from 'ws';
import { parse as parseUrl } from 'url';
import { pool } from '../db/pool';
import { verifyFirebaseToken } from '../services/firebase';
import { runAzurePronunciationSession, createAudioInputStream } from '../services/azure';
import { writeSessionCompletion, markSessionFailed } from '../services/sessionWriter';
import { checkUsageLimit } from '../services/usageEnforcement';
import { DbSession, DbUser, WsServerMessage } from '../types';
import { env } from '../config/env';

export function createWebSocketServer(): WebSocketServer {
  const wss = new WebSocketServer({ noServer: true });

  wss.on('connection', async (ws: WebSocket, req: IncomingMessage) => {
    // ── Parse session ID and token from URL ─────────────────────────────
    // Path: /ws/session/:sessionPublicId?token=<firebase_token>
    const { pathname, query } = parseUrl(req.url ?? '', true);
    const sessionPublicId = pathname?.split('/').pop();
    const token = query.token as string | undefined;

    function send(msg: WsServerMessage): void {
      if (ws.readyState === WebSocket.OPEN) {
        ws.send(JSON.stringify(msg));
      }
    }

    function closeWithError(message: string): void {
      send({ type: 'error', message });
      ws.close(1008, message);
    }

    // ── Authenticate token ───────────────────────────────────────────────
    if (!token) {
      closeWithError('UNAUTHORIZED');
      return;
    }

    let firebaseUid: string;
    try {
      const decoded = await verifyFirebaseToken(token);
      firebaseUid = decoded.uid;
    } catch {
      closeWithError('INVALID_TOKEN');
      return;
    }

    // ── Fetch user ───────────────────────────────────────────────────────
    const { rows: userRows } = await pool.query<DbUser>(
      'SELECT id, native_language, target_accent FROM users WHERE firebase_uid = $1',
      [firebaseUid]
    );

    if (userRows.length === 0) {
      closeWithError('UNAUTHORIZED');
      return;
    }
    const user = userRows[0];

    // ── Fetch + validate session ─────────────────────────────────────────
    const { rows: sessionRows } = await pool.query<
      DbSession & { text_content: string }
    >(
      `SELECT s.id, s.public_id, s.status, s.user_id, s.exercise_id,
              e.text_content
       FROM sessions s
       JOIN exercises e ON e.id = s.exercise_id
       WHERE s.public_id = $1 AND s.user_id = $2`,
      [sessionPublicId, user.id]
    );

    if (sessionRows.length === 0) {
      closeWithError('SESSION_NOT_FOUND');
      return;
    }

    const session = sessionRows[0];

    if (session.status !== 'pending') {
      closeWithError('SESSION_ALREADY_COMPLETED');
      return;
    }

    // ── Re-check usage limit right before opening Azure stream ──────────
    const limitCheck = await checkUsageLimit(user.id);
    if (!limitCheck.allowed) {
      closeWithError('DAILY_LIMIT_EXCEEDED');
      return;
    }

    // ── Set up Azure audio stream ────────────────────────────────────────
    const audioInputStream = createAudioInputStream();
    const targetAccent = user.target_accent ?? 'en-US';

    // ── Max session duration enforcement ────────────────────────────────
    const maxDurationTimer = setTimeout(() => {
      audioInputStream.close(); // signals end of stream to Azure
    }, env.maxSessionDurationSeconds * 1000);

    // ── Start Azure pronunciation session (non-blocking) ─────────────────
    const azurePromise = runAzurePronunciationSession(
      audioInputStream,
      session.text_content,
      targetAccent,
      (wordMsg) => send(wordMsg),
      (errMsg) => send({ type: 'error', message: errMsg })
    );

    // ── Handle incoming WebSocket messages ───────────────────────────────
    ws.on('message', (data: WebSocket.RawData, isBinary: boolean) => {
      if (isBinary) {
        // Raw audio chunk — forward to Azure push stream
        // Normalise to a single Buffer then hand the underlying ArrayBuffer to Azure
        const buf = Buffer.isBuffer(data)
          ? data
          : Array.isArray(data)
            ? Buffer.concat(data as Buffer[])
            : Buffer.from(data as ArrayBuffer);
        audioInputStream.write(buf.buffer.slice(buf.byteOffset, buf.byteOffset + buf.byteLength) as ArrayBuffer);
        return;
      }

      // Text message — only "stop" is handled
      try {
        const msg = JSON.parse(data.toString());
        if (msg?.type === 'stop') {
          audioInputStream.close();
        }
      } catch {
        // ignore malformed JSON
      }
    });

    ws.on('close', () => {
      clearTimeout(maxDurationTimer);
      // If client disconnects unexpectedly, close the audio stream
      try { audioInputStream.close(); } catch { /* already closed */ }
    });

    // ── Await Azure result and persist ───────────────────────────────────
    try {
      const result = await azurePromise;
      clearTimeout(maxDurationTimer);

      await writeSessionCompletion({
        sessionId: session.id,
        userId: user.id,
        overallAccuracy: result.overallAccuracy,
        fluencyScore: result.fluencyScore,
        durationSeconds: result.durationSeconds,
        words: result.words,
      });

      send({
        type: 'summary',
        overallAccuracy: result.overallAccuracy,
        fluencyScore: result.fluencyScore,
        durationSeconds: result.durationSeconds,
      });
    } catch (err) {
      clearTimeout(maxDurationTimer);
      console.error('Session processing error:', err);
      await markSessionFailed(session.id).catch(() => {});
      send({ type: 'error', message: 'INTERNAL_SERVER_ERROR' });
    } finally {
      ws.close();
    }
  });

  return wss;
}
