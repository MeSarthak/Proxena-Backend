import { Router, Request, Response, NextFunction } from 'express';
import { authenticate } from '../middleware/auth';
import { pool } from '../db/pool';
import { AppError } from '../middleware/errorHandler';
import { DbPlan, DbUsageTracking, DbUser } from '../types';
import { env } from '../config/env';

const router = Router();

// Valid accent codes supported by Azure Speech SDK
const VALID_ACCENTS = ['en-US', 'en-GB', 'en-AU', 'en-IN'];

router.patch('/profile', authenticate, async (req: Request, res: Response, next: NextFunction) => {
  try {
    const { nativeLanguage, targetAccent } = req.body as {
      nativeLanguage?: string;
      targetAccent?: string;
    };

    if (!nativeLanguage && !targetAccent) {
      return next(new AppError('VALIDATION_ERROR', 'Provide at least one field to update.', 400));
    }

    if (targetAccent && !VALID_ACCENTS.includes(targetAccent)) {
      return next(new AppError('VALIDATION_ERROR', `Invalid accent. Must be one of: ${VALID_ACCENTS.join(', ')}.`, 400));
    }

    const user = req.user!;

    const { rows } = await pool.query<Pick<DbUser, 'native_language' | 'target_accent'>>(
      `UPDATE users
       SET
         native_language = COALESCE($1, native_language),
         target_accent   = COALESCE($2, target_accent)
       WHERE id = $3
       RETURNING native_language, target_accent`,
      [nativeLanguage ?? null, targetAccent ?? null, user.id]
    );

    res.json({
      nativeLanguage: rows[0].native_language,
      targetAccent: rows[0].target_accent,
    });
  } catch (err) {
    next(new AppError('INTERNAL_SERVER_ERROR', 'Failed to update profile.', 500));
  }
});

router.get('/me', authenticate, async (req: Request, res: Response, next: NextFunction) => {
  try {
    const user = req.user!;

    // Get plan via users → plans join
    const { rows: planRows } = await pool.query<Pick<DbPlan, 'name' | 'daily_sessions'>>(
      `SELECT p.name, p.daily_sessions
       FROM plans p
       INNER JOIN users u ON u.plan_id = p.id
       WHERE u.id = $1`,
      [user.id]
    );

    const plan = planRows[0];
    const planType = plan?.name ?? 'free';
    const dailySessionLimit = plan?.daily_sessions ?? env.limits.freeDailySessions;

    // Get today's usage
    const today = new Date().toISOString().slice(0, 10);
    const { rows: usageRows } = await pool.query<DbUsageTracking>(
      `SELECT minutes_used, sessions_count
       FROM usage_tracking
       WHERE user_id = $1 AND usage_date = $2`,
      [user.id, today]
    );

    const usage = usageRows[0];

    res.json({
      publicId: user.publicId,
      email: user.email,
      nativeLanguage: user.nativeLanguage,
      targetAccent: user.targetAccent,
      subscription: {
        planType,
        status: 'active',
        expiresAt: null,
      },
      usageToday: {
        minutesUsed: usage?.minutes_used ?? 0,
        sessionsCount: usage?.sessions_count ?? 0,
        dailySessionLimit,
      },
    });
  } catch (err) {
    next(new AppError('INTERNAL_SERVER_ERROR', 'Failed to fetch user profile.', 500));
  }
});

export default router;
