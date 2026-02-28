import { Router, Request, Response, NextFunction } from 'express';
import { authenticate } from '../middleware/auth';
import { pool } from '../db/pool';
import { AppError } from '../middleware/errorHandler';
import { DbSubscription } from '../types';

const router = Router();

// GET /subscription
router.get('/', authenticate, async (req: Request, res: Response, next: NextFunction) => {
  try {
    const user = req.user!;

    const { rows } = await pool.query<DbSubscription>(
      `SELECT public_id, plan_type, status, started_at, expires_at
       FROM subscriptions
       WHERE user_id = $1
       ORDER BY started_at DESC
       LIMIT 1`,
      [user.id]
    );

    if (rows.length === 0) {
      // User has no subscription row — treat as free plan
      return res.json({
        planType: 'free',
        status: 'active',
        startedAt: null,
        expiresAt: null,
      });
    }

    const sub = rows[0];
    res.json({
      planType: sub.plan_type ?? 'free',
      status: sub.status ?? 'active',
      startedAt: sub.started_at,
      expiresAt: sub.expires_at,
    });
  } catch (err) {
    next(new AppError('INTERNAL_SERVER_ERROR', 'Failed to fetch subscription.', 500));
  }
});

// POST /subscription/upgrade  — stub (payment not yet integrated)
router.post('/upgrade', authenticate, async (req: Request, res: Response, next: NextFunction) => {
  res.status(501).json({
    error: {
      code: 'NOT_IMPLEMENTED',
      message: 'Subscription upgrade is not yet available. Payment integration coming soon.',
    },
  });
});

export default router;
