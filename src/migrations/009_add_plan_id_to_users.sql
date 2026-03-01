-- Add plan_id FK column to users (nullable first so we can backfill)
ALTER TABLE "users"
  ADD COLUMN "plan_id" BIGINT;

-- Backfill all existing users to the free plan
UPDATE "users"
SET "plan_id" = (SELECT "id" FROM "plans" WHERE "name" = 'free');

-- Now enforce NOT NULL
ALTER TABLE "users"
  ALTER COLUMN "plan_id" SET NOT NULL;

-- Set DB-level default to the free plan id (1 = free, inserted first in 008)
ALTER TABLE "users"
  ALTER COLUMN "plan_id" SET DEFAULT 1;

-- Add FK constraint
ALTER TABLE "users"
  ADD CONSTRAINT "users_plan_id_fkey"
  FOREIGN KEY ("plan_id") REFERENCES "plans" ("id") DEFERRABLE INITIALLY IMMEDIATE;

CREATE INDEX ON "users" ("plan_id");
