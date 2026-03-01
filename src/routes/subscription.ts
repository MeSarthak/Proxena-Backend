import { Router, Request, Response, NextFunction } from 'express';
import { authenticate } from '../middleware/auth';
import { pool } from '../db/pool';
import { AppError } from '../middleware/errorHandler';
import { DbPlan } from '../types';

const router = Router();

// GET /subscription
router.get('/', authenticate, async (req: Request, res: Response, next: NextFunction) => {
  try {
    const user = req.user!;

    const { rows } = await pool.query<Pick<DbPlan, 'name' | 'display_name' | 'daily_sessions'>>(
      `SELECT p.name, p.display_name, p.daily_sessions
       FROM plans p
       INNER JOIN users u ON u.plan_id = p.id
       WHERE u.id = $1`,
      [user.id]
    );

    const plan = rows[0];

    res.json({
      planType: plan?.name ?? 'free',
      displayName: plan?.display_name ?? 'Free',
      dailySessionLimit: plan?.daily_sessions ?? 3,
      status: 'active',
      expiresAt: null,
    });
  } catch (err) {
    next(new AppError('INTERNAL_SERVER_ERROR', 'Failed to fetch subscription.', 500));
  }
});

// POST /subscription/upgrade
router.post('/upgrade', authenticate, async (req: Request, res: Response, next: NextFunction) => {
  try {
    const user = req.user!;

    await pool.query(
      `UPDATE users SET plan_id = (SELECT id FROM plans WHERE name = 'pro') WHERE id = $1`,
      [user.id]
    );

    const { rows: planRows } = await pool.query<Pick<DbPlan, 'name' | 'display_name' | 'daily_sessions'>>(
      `SELECT p.name, p.display_name, p.daily_sessions
       FROM plans p
       INNER JOIN users u ON u.plan_id = p.id
       WHERE u.id = $1`,
      [user.id]
    );

    const plan = planRows[0];

    res.json({
      planType: plan?.name ?? 'pro',
      displayName: plan?.display_name ?? 'Pro',
      dailySessionLimit: plan?.daily_sessions ?? 999,
      status: 'active',
      expiresAt: null,
    });
  } catch (err) {
    next(new AppError('INTERNAL_SERVER_ERROR', 'Failed to upgrade subscription.', 500));
  }
});

export default router;
