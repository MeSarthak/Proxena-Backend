import { pool } from '../db/pool';
import { env } from '../config/env';
import { DbPlan, DbUsageTracking } from '../types';

export interface UsageLimitResult {
  allowed: boolean;
  planType: 'free' | 'pro';
  minutesUsed: number;
  sessionsCount: number;
  dailySessionLimit: number;
}

export async function checkUsageLimit(userId: bigint): Promise<UsageLimitResult> {
  // Get plan via users → plans join
  const { rows: planRows } = await pool.query<Pick<DbPlan, 'name' | 'daily_sessions'>>(
    `SELECT p.name, p.daily_sessions
     FROM plans p
     INNER JOIN users u ON u.plan_id = p.id
     WHERE u.id = $1`,
    [userId]
  );

  const planType: 'free' | 'pro' =
    planRows[0]?.name === 'pro' ? 'pro' : 'free';

  const dailySessionLimit =
    planRows[0]?.daily_sessions ?? env.limits.freeDailySessions;

  // Get today's usage
  const today = new Date().toISOString().slice(0, 10);
  const { rows: usageRows } = await pool.query<DbUsageTracking>(
    `SELECT minutes_used, sessions_count FROM usage_tracking
     WHERE user_id = $1 AND usage_date = $2`,
    [userId, today]
  );

  const minutesUsed = usageRows[0]?.minutes_used ?? 0;
  const sessionsCount = usageRows[0]?.sessions_count ?? 0;

  const allowed = sessionsCount < dailySessionLimit;

  return { allowed, planType, minutesUsed, sessionsCount, dailySessionLimit };
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
