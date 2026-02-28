import { pool } from '../db/pool';
import { WordResultInput } from '../types';
import { incrementUsage } from './usageEnforcement';

export interface SessionCompletionData {
  sessionId: bigint;
  userId: bigint;
  overallAccuracy: number;
  fluencyScore: number;
  durationSeconds: number;
  words: WordResultInput[];
}

/**
 * Writes session completion data inside a single DB transaction:
 * 1. Bulk insert word_results
 * 2. Update sessions (status, scores, duration)
 * 3. Increment usage_tracking
 *
 * Rolls back everything on any failure.
 */
export async function writeSessionCompletion(data: SessionCompletionData): Promise<void> {
  const client = await pool.connect();

  try {
    await client.query('BEGIN');

    // 1. Bulk insert word_results using unnest for efficiency
    if (data.words.length > 0) {
      const words       = data.words.map((w) => w.word);
      const accuracies  = data.words.map((w) => w.accuracyScore);
      const errorTypes  = data.words.map((w) => w.errorType);
      const sessionIds  = data.words.map(() => data.sessionId);

      await client.query(
        `INSERT INTO word_results (session_id, word, accuracy_score, error_type)
         SELECT * FROM unnest(
           $1::bigint[],
           $2::varchar[],
           $3::numeric[],
           $4::varchar[]
         )`,
        [sessionIds, words, accuracies, errorTypes]
      );
    }

    // 2. Update session record
    await client.query(
      `UPDATE sessions
       SET status           = 'completed',
           overall_accuracy = $1,
           fluency_score    = $2,
           duration_seconds = $3
       WHERE id = $4`,
      [data.overallAccuracy, data.fluencyScore, data.durationSeconds, data.sessionId]
    );

    // 3. Increment usage_tracking
    await incrementUsage(client, data.userId, data.durationSeconds);

    await client.query('COMMIT');
  } catch (err) {
    await client.query('ROLLBACK');
    throw err;
  } finally {
    client.release();
  }
}

/**
 * Marks a session as failed without touching usage.
 */
export async function markSessionFailed(sessionId: bigint): Promise<void> {
  await pool.query(
    `UPDATE sessions SET status = 'failed' WHERE id = $1`,
    [sessionId]
  );
}
