-- Migration 012: Add speech analytics columns to sessions table
-- Supports: Filler word detection, Speaking speed analytics, Speech health score

ALTER TABLE sessions
  ADD COLUMN IF NOT EXISTS filler_count INTEGER DEFAULT 0,
  ADD COLUMN IF NOT EXISTS words_per_minute NUMERIC(6,2),
  ADD COLUMN IF NOT EXISTS speech_health_score NUMERIC(5,2);
