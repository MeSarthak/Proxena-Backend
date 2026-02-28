import { pool } from '../db/pool';
import { env } from '../config/env';
import { DbSubscription, DbUsageTracking } from '../types';

export interface UsageLimitResult {
  allowed: boolean;
  planType: 'free' | 'pro';
  minutesUsed: number;
  sessionsCount: number;
  dailyMinuteLimit: number;
  dailySessionLimit: number;
}

export async function checkUsageLimit(userId: bigint): Promise<UsageLimitResult> {
  // Get active subscription
  const { rows: subRows } = await pool.query<DbSubscription>(
    `SELECT plan_type FROM subscriptions
     WHERE user_id = $1 AND status = 'active'
     ORDER BY started_at DESC LIMIT 1`,
    [userId]
  );

  const planType: 'free' | 'pro' =
    subRows[0]?.plan_type === 'pro' ? 'pro' : 'free';

  const dailyMinuteLimit =
    planType === 'pro' ? env.limits.proDailyMinutes : env.limits.freeDailyMinutes;
  const dailySessionLimit =
    planType === 'pro' ? env.limits.proDailySessions : env.limits.freeDailySessions;

  // Get today's usage
  const today = new Date().toISOString().slice(0, 10);
  const { rows: usageRows } = await pool.query<DbUsageTracking>(
    `SELECT minutes_used, sessions_count FROM usage_tracking
     WHERE user_id = $1 AND usage_date = $2`,
    [userId, today]
  );

  const minutesUsed = usageRows[0]?.minutes_used ?? 0;
  const sessionsCount = usageRows[0]?.sessions_count ?? 0;

  const allowed =
    minutesUsed < dailyMinuteLimit && sessionsCount < dailySessionLimit;

  return { allowed, planType, minutesUsed, sessionsCount, dailyMinuteLimit, dailySessionLimit };
}

export async function incrementUsage(
  client: import('pg').PoolClient,
  userId: bigint,
  durationSeconds: number
): Promise<void> {
  const today = new Date().toISOString().slice(0, 10);
  const minutesUsed = Math.ceil(durationSeconds / 60);

  await client.query(
    `INSERT INTO usage_tracking (user_id, usage_date, minutes_used, sessions_count)
     VALUES ($1, $2, $3, 1)
     ON CONFLICT (user_id, usage_date) DO UPDATE
       SET minutes_used   = usage_tracking.minutes_used + EXCLUDED.minutes_used,
           sessions_count = usage_tracking.sessions_count + 1`,
    [userId, today, minutesUsed]
  );
}
