import 'dotenv/config';
import http from 'http';
import app from './app';
import { createWebSocketServer } from './ws/sessionHandler';
import { env } from './config/env';
import { pool } from './db/pool';

async function main(): Promise<void> {
  // Verify DB connectivity on startup — hard timeout so the process never
  // hangs indefinitely if the DB host is unreachable (e.g. cross-region cold start).
  // We do NOT exit on failure: the app can still serve the health endpoint and
  // static routes; DB errors will surface per-request instead of blocking startup.
  try {
    const connectTimeout = new Promise<never>((_, reject) =>
      setTimeout(() => reject(new Error('DB connection timed out after 15s')), 15000)
    );
    await Promise.race([pool.query('SELECT 1'), connectTimeout]);
    console.log('PostgreSQL connected successfully.');
  } catch (err) {
    console.error('WARNING: Could not reach PostgreSQL on startup (will retry on first request):', err);
    // Do NOT exit — keep the process alive so Azure health probe can succeed.
  }

  const server = http.createServer(app);
  const wss = createWebSocketServer();

  // Upgrade HTTP → WebSocket only for /ws/session/* paths
  server.on('upgrade', (req, socket, head) => {
    const { pathname } = new URL(req.url ?? '', `http://${req.headers.host}`);

    if (pathname.startsWith('/ws/session/')) {
      wss.handleUpgrade(req, socket, head, (ws) => {
        wss.emit('connection', ws, req);
      });
    } else {
      socket.destroy();
    }
  });

  server.listen(env.PORT, () => {
    console.log(`Proxena backend running on port ${env.PORT} [${env.NODE_ENV}]`);
    console.log(`REST API:  http://localhost:${env.PORT}/v1`);
    console.log(`WebSocket: ws://localhost:${env.PORT}/ws/session/<id>?token=<firebase_token>`);
    console.log(`Health:    http://localhost:${env.PORT}/health`);
  });

  // Graceful shutdown
  const shutdown = async () => {
    console.log('\nShutting down gracefully...');
    server.close(async () => {
      await pool.end();
      console.log('PostgreSQL pool closed.');
      process.exit(0);
    });
  };

  process.on('SIGTERM', shutdown);
  process.on('SIGINT', shutdown);
}

main().catch((err) => {
  console.error('Fatal startup error:', err);
  process.exit(1);
});
