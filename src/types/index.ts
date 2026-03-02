// ─── Database row shapes ───────────────────────────────────────────────────

export interface DbPlan {
  id: bigint;
  name: 'free' | 'pro';
  display_name: string;
  daily_sessions: number;
  created_at: Date;
}

export interface DbUser {
  id: bigint;
  public_id: string;
  firebase_uid: string;
  email: string;
  native_language: string | null;
  target_accent: string | null;
  plan_id: bigint;
  created_at: Date;
}

export interface DbExercise {
  id: bigint;
  public_id: string;
  title: string | null;
  category: string | null;
  text_content: string;
  difficulty: string | null;
  created_at: Date;
}

export interface DbSession {
  id: bigint;
  public_id: string;
  user_id: bigint;
  exercise_id: bigint;
  status: 'pending' | 'completed' | 'failed';
  overall_accuracy: string | null;
  fluency_score: string | null;
  completeness_score: string | null;
  prosody_score: string | null;
  pronunciation_score: string | null;
  duration_seconds: number | null;
  filler_count: number | null;
  words_per_minute: string | null;
  speech_health_score: string | null;
  pause_count: number | null;
  total_pause_ms: number | null;
  avg_pause_ms: number | null;
  longest_pause_ms: number | null;
  hesitation_score: string | null;
  mispronunciation_count: number | null;
  omission_count: number | null;
  insertion_count: number | null;
  created_at: Date;
}

export interface DbWordResult {
  id: bigint;
  session_id: bigint;
  word: string | null;
  accuracy_score: string | null;
  error_type: string | null;
  phonemes: object | null;
  syllables: object | null;
  duration_ms: number | null;
  created_at: Date;
}

export interface DbUsageTracking {
  id: bigint;
  user_id: bigint;
  usage_date: Date;
  minutes_used: number;
  sessions_count: number;
  created_at: Date;
}

// ─── Request augmentation ──────────────────────────────────────────────────

export interface AuthenticatedUser {
  id: bigint;
  publicId: string;
  firebaseUid: string;
  email: string;
  nativeLanguage: string | null;
  targetAccent: string | null;
}

// Extend Express Request
declare global {
  namespace Express {
    interface Request {
      user?: AuthenticatedUser;
    }
  }
}

// ─── WebSocket message types ───────────────────────────────────────────────

export type WordStatus = 'correct' | 'partial' | 'incorrect' | 'skipped';

export interface WsWordMessage {
  type: 'word';
  word: string;
  accuracy: number;
  status: WordStatus;
}

export interface WsSummaryMessage {
  type: 'summary';
  overallAccuracy: number;
  fluencyScore: number;
  completenessScore: number;
  prosodyScore: number;
  pronunciationScore: number;
  durationSeconds: number;
  fillerCount: number;
  wordsPerMinute: number;
  speechHealthScore: number;
  fillerWords: string[];
  pauseCount: number;
  totalPauseMs: number;
  avgPauseMs: number;
  longestPauseMs: number;
  hesitationScore: number;
  mispronunciationCount: number;
  omissionCount: number;
  insertionCount: number;
}

export interface WsErrorMessage {
  type: 'error';
  message: string;
}

export type WsServerMessage = WsWordMessage | WsSummaryMessage | WsErrorMessage;

export interface WsStopMessage {
  type: 'stop';
}

// ─── Word result for bulk insert ───────────────────────────────────────────

export interface WordResultInput {
  word: string;
  accuracyScore: number;
  errorType: string | null;
  phonemes: { phoneme: string; accuracy: number }[] | null;
  syllables: { syllable: string; accuracy: number; durationMs: number }[] | null;
  durationMs: number | null;
}

// ─── Error codes ───────────────────────────────────────────────────────────

export type ErrorCode =
  | 'UNAUTHORIZED'
  | 'INVALID_TOKEN'
  | 'DAILY_LIMIT_EXCEEDED'
  | 'INVALID_EXERCISE'
  | 'SESSION_NOT_FOUND'
  | 'SESSION_ALREADY_COMPLETED'
  | 'SUBSCRIPTION_NOT_FOUND'
  | 'INTERNAL_SERVER_ERROR'
  | 'NOT_IMPLEMENTED'
  | 'VALIDATION_ERROR';
