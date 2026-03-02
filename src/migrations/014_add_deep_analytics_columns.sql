-- Migration 014: Add deep analytics columns to sessions and word_results
-- These columns store phoneme/syllable data, pause/hesitation metrics,
-- and error type counts extracted from Azure Speech SDK at zero extra API cost.

-- ─── Sessions: new analytics columns ──────────────────────────────────────────

ALTER TABLE sessions
  ADD COLUMN IF NOT EXISTS pronunciation_score   NUMERIC(6,2),
  ADD COLUMN IF NOT EXISTS pause_count           INTEGER,
  ADD COLUMN IF NOT EXISTS total_pause_ms        INTEGER,
  ADD COLUMN IF NOT EXISTS avg_pause_ms          INTEGER,
  ADD COLUMN IF NOT EXISTS longest_pause_ms      INTEGER,
  ADD COLUMN IF NOT EXISTS hesitation_score      NUMERIC(6,2),
  ADD COLUMN IF NOT EXISTS mispronunciation_count INTEGER,
  ADD COLUMN IF NOT EXISTS omission_count        INTEGER,
  ADD COLUMN IF NOT EXISTS insertion_count       INTEGER;

-- ─── Word results: phoneme/syllable/duration columns ──────────────────────────

ALTER TABLE word_results
  ADD COLUMN IF NOT EXISTS phonemes    JSONB,
  ADD COLUMN IF NOT EXISTS syllables   JSONB,
  ADD COLUMN IF NOT EXISTS duration_ms INTEGER;
