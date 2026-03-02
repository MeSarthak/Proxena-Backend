import { pool } from '../db/pool';
import { WordResultInput } from '../types';
import { incrementUsage } from './usageEnforcement';

export interface SessionCompletionData {
  sessionId: bigint;
  userId: bigint;
  overallAccuracy: number;
  fluencyScore: number;
  completenessScore: number;
  prosodyScore: number;
  pronunciationScore: number;
  durationSeconds: number;
  fillerCount: number;
  wordsPerMinute: number;
  speechHealthScore: number;
  pauseCount: number;
  totalPauseMs: number;
  avgPauseMs: number;
  longestPauseMs: number;
  hesitationScore: number;
  mispronunciationCount: number;
  omissionCount: number;
  insertionCount: number;
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
      const phonemes    = data.words.map((w) => w.phonemes ? JSON.stringify(w.phonemes) : null);
      const syllables   = data.words.map((w) => w.syllables ? JSON.stringify(w.syllables) : null);
      const durations   = data.words.map((w) => w.durationMs);

      await client.query(
        `INSERT INTO word_results (session_id, word, accuracy_score, error_type, phonemes, syllables, duration_ms)
         SELECT * FROM unnest(
           $1::bigint[],
           $2::varchar[],
           $3::numeric[],
           $4::varchar[],
           $5::jsonb[],
           $6::jsonb[],
           $7::integer[]
         )`,
        [sessionIds, words, accuracies, errorTypes, phonemes, syllables, durations]
      );
    }

    // 2. Update session record
    await client.query(
      `UPDATE sessions
       SET status                 = 'completed',
           overall_accuracy       = $1,
           fluency_score          = $2,
           completeness_score     = $3,
           prosody_score          = $4,
           duration_seconds       = $5,
           filler_count           = $6,
           words_per_minute       = $7,
           speech_health_score    = $8,
           pronunciation_score    = $9,
           pause_count            = $10,
           total_pause_ms         = $11,
           avg_pause_ms           = $12,
           longest_pause_ms       = $13,
           hesitation_score       = $14,
           mispronunciation_count = $15,
           omission_count         = $16,
           insertion_count        = $17
       WHERE id = $18`,
      [
        data.overallAccuracy,
        data.fluencyScore,
        data.completenessScore,
        data.prosodyScore,
        data.durationSeconds,
        data.fillerCount,
        data.wordsPerMinute,
        data.speechHealthScore,
        data.pronunciationScore,
        data.pauseCount,
        data.totalPauseMs,
        data.avgPauseMs,
        data.longestPauseMs,
        data.hesitationScore,
        data.mispronunciationCount,
        data.omissionCount,
        data.insertionCount,
        data.sessionId,
      ]
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
