import { Router, Request, Response, NextFunction } from 'express';
import { authenticate } from '../middleware/auth';
import { pool } from '../db/pool';
import { AppError } from '../middleware/errorHandler';
import { DbExercise } from '../types';

const router = Router();

// GET /exercises?category=&difficulty=
router.get('/', authenticate, async (req: Request, res: Response, next: NextFunction) => {
  try {
    const { category, difficulty, duration } = req.query;

    const conditions: string[] = [];
    const params: unknown[] = [];

    if (category) {
      params.push(category);
      conditions.push(`category = $${params.length}`);
    }
    if (difficulty) {
      params.push(difficulty);
      conditions.push(`difficulty = $${params.length}`);
    }
    
    if (duration === 'short') {
      conditions.push(`LENGTH(text_content) < 150`);
    } else if (duration === 'medium') {
      conditions.push(`LENGTH(text_content) >= 150 AND LENGTH(text_content) < 300`);
    } else if (duration === 'long') {
      conditions.push(`LENGTH(text_content) >= 300`);
    }

    const where = conditions.length > 0 ? `WHERE ${conditions.join(' AND ')}` : '';

    const { rows } = await pool.query<DbExercise & { duration: string }>(
      `SELECT public_id, title, category, difficulty,
         CASE 
           WHEN LENGTH(text_content) < 150 THEN 'short'
           WHEN LENGTH(text_content) >= 150 AND LENGTH(text_content) < 300 THEN 'medium'
           ELSE 'long'
         END as duration
       FROM exercises
       ${where}
       ORDER BY created_at ASC`,
      params
    );

    res.json(
      rows
        .filter((e) => e.category !== null && e.difficulty !== null)
        .map((e) => ({
          publicId: e.public_id,
          title: e.title ?? '',
          category: e.category,
          difficulty: e.difficulty,
          duration: e.duration,
        }))
    );
  } catch (err) {
    next(new AppError('INTERNAL_SERVER_ERROR', 'Failed to fetch exercises.', 500));
  }
});

// GET /exercises/:publicId
router.get('/:publicId', authenticate, async (req: Request, res: Response, next: NextFunction) => {
  try {
    const { publicId } = req.params;

    const { rows } = await pool.query<DbExercise>(
      `SELECT public_id, title, category, difficulty, text_content
       FROM exercises
       WHERE public_id = $1`,
      [publicId]
    );

    if (rows.length === 0) {
      return next(new AppError('INVALID_EXERCISE', 'Exercise not found.', 404));
    }

    const e = rows[0];

    if (!e.category || !e.difficulty) {
      return next(new AppError('INVALID_EXERCISE', 'Exercise data is incomplete.', 500));
    }

    res.json({
      publicId: e.public_id,
      title: e.title ?? '',
      category: e.category,
      difficulty: e.difficulty,
      textContent: e.text_content,
    });
  } catch (err) {
    next(new AppError('INTERNAL_SERVER_ERROR', 'Failed to fetch exercise.', 500));
  }
});

export default router;
