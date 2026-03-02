-- Migration 013: Add completeness and prosody score columns to sessions table
-- Supports: Realistic pronunciation scoring using Azure's full assessment output

ALTER TABLE sessions
  ADD COLUMN IF NOT EXISTS completeness_score NUMERIC(5,2),
  ADD COLUMN IF NOT EXISTS prosody_score NUMERIC(5,2);
