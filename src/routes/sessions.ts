import { Router, Request, Response, NextFunction } from 'express';
import { authenticate } from '../middleware/auth';
import { pool } from '../db/pool';
import { AppError } from '../middleware/errorHandler';
import { checkUsageLimit } from '../services/usageEnforcement';
import { DbExercise, DbPlan, DbSession, DbWordResult } from '../types';
import { v4 as uuidv4 } from 'uuid';
import { env } from '../config/env';

const router = Router();

// POST /sessions/start
router.post('/start', authenticate, async (req: Request, res: Response, next: NextFunction) => {
  try {
    const user = req.user!;
    const { exercisePublicId } = req.body as { exercisePublicId?: string };

    if (!exercisePublicId) {
      return next(new AppError('INVALID_EXERCISE', 'exercisePublicId is required.', 400));
    }

    // Validate exercise
    const { rows: exerciseRows } = await pool.query<DbExercise>(
      'SELECT id FROM exercises WHERE public_id = $1',
      [exercisePublicId]
    );

    if (exerciseRows.length === 0) {
      return next(new AppError('INVALID_EXERCISE', 'Exercise not found.', 404));
    }

    const exercise = exerciseRows[0];

    // Enforce usage limits BEFORE touching Azure
    const limitCheck = await checkUsageLimit(user.id);
    if (!limitCheck.allowed) {
      return next(
        new AppError('DAILY_LIMIT_EXCEEDED', 'Daily practice limit reached.', 429)
      );
    }

    // Determine max session duration based on plan
    const { rows: planRows } = await pool.query<Pick<DbPlan, 'name'>>(
      `SELECT p.name FROM plans p INNER JOIN users u ON u.plan_id = p.id WHERE u.id = $1`,
      [user.id]
    );
    const isPro = planRows[0]?.name === 'pro';
    const maxDurationSeconds = isPro
      ? env.proMaxSessionDurationSeconds
      : env.maxSessionDurationSeconds;

    // Create session record
    const sessionPublicId = uuidv4();
    await pool.query(
      `INSERT INTO sessions (public_id, user_id, exercise_id, status)
       VALUES ($1, $2, $3, 'pending')`,
      [sessionPublicId, user.id, exercise.id]
    );

    const wsUrl = `${env.API_BASE_URL.replace(/^http/, 'ws')}/ws/session/${sessionPublicId}`;

    res.status(201).json({
      sessionPublicId,
      wsUrl,
      maxDurationSeconds,
    });
  } catch (err) {
    if (err instanceof AppError) return next(err);
    next(new AppError('INTERNAL_SERVER_ERROR', 'Failed to start session.', 500));
  }
});

// GET /sessions/history
router.get('/history', authenticate, async (req: Request, res: Response, next: NextFunction) => {
  try {
    const user = req.user!;
    const page = Math.max(1, parseInt((req.query.page as string) ?? '1', 10));
    const limit = Math.min(50, Math.max(1, parseInt((req.query.limit as string) ?? '10', 10)));
    const offset = (page - 1) * limit;

    const { rows: sessions } = await pool.query<DbSession>(
      `SELECT public_id, overall_accuracy, fluency_score, completeness_score,
              prosody_score, duration_seconds,
              filler_count, words_per_minute, speech_health_score, created_at
       FROM sessions
       WHERE user_id = $1 AND status = 'completed'
       ORDER BY created_at DESC
       LIMIT $2 OFFSET $3`,
      [user.id, limit, offset]
    );

    const { rows: countRows } = await pool.query<{ count: string }>(
      `SELECT COUNT(*) as count FROM sessions WHERE user_id = $1 AND status = 'completed'`,
      [user.id]
    );

    res.json({
      sessions: sessions.map((s) => ({
        publicId: s.public_id,
        overallAccuracy: s.overall_accuracy ? parseFloat(s.overall_accuracy) : null,
        fluencyScore: s.fluency_score ? parseFloat(s.fluency_score) : null,
        completenessScore: s.completeness_score ? parseFloat(s.completeness_score) : null,
        prosodyScore: s.prosody_score ? parseFloat(s.prosody_score) : null,
        durationSeconds: s.duration_seconds,
        fillerCount: s.filler_count ?? 0,
        wordsPerMinute: s.words_per_minute ? parseFloat(s.words_per_minute) : null,
        speechHealthScore: s.speech_health_score ? parseFloat(s.speech_health_score) : null,
        createdAt: s.created_at,
      })),
      pagination: {
        page,
        limit,
        total: parseInt(countRows[0].count, 10),
      },
    });
  } catch (err) {
    next(new AppError('INTERNAL_SERVER_ERROR', 'Failed to fetch session history.', 500));
  }
});

// GET /sessions/:publicId
router.get('/:publicId', authenticate, async (req: Request, res: Response, next: NextFunction) => {
  try {
    const user = req.user!;
    const { publicId } = req.params;

    const { rows: sessionRows } = await pool.query<DbSession>(
      `SELECT id, public_id, overall_accuracy, fluency_score, completeness_score,
              prosody_score, duration_seconds,
              filler_count, words_per_minute, speech_health_score, status, created_at
       FROM sessions
       WHERE public_id = $1 AND user_id = $2`,
      [publicId, user.id]
    );

    if (sessionRows.length === 0) {
      return next(new AppError('SESSION_NOT_FOUND', 'Session not found.', 404));
    }

    const session = sessionRows[0];

    const { rows: words } = await pool.query<DbWordResult>(
      `SELECT word, accuracy_score, error_type
       FROM word_results
       WHERE session_id = $1
       ORDER BY id ASC`,
      [session.id]
    );

    res.json({
      publicId: session.public_id,
      status: session.status,
      overallAccuracy: session.overall_accuracy ? parseFloat(session.overall_accuracy) : null,
      fluencyScore: session.fluency_score ? parseFloat(session.fluency_score) : null,
      completenessScore: session.completeness_score ? parseFloat(session.completeness_score) : null,
      prosodyScore: session.prosody_score ? parseFloat(session.prosody_score) : null,
      durationSeconds: session.duration_seconds,
      fillerCount: session.filler_count ?? 0,
      wordsPerMinute: session.words_per_minute ? parseFloat(session.words_per_minute) : null,
      speechHealthScore: session.speech_health_score ? parseFloat(session.speech_health_score) : null,
      createdAt: session.created_at,
      words: words.map((w) => ({
        word: w.word,
        accuracy: w.accuracy_score ? parseFloat(w.accuracy_score) : null,
        errorType: w.error_type,
      })),
    });
  } catch (err) {
    next(new AppError('INTERNAL_SERVER_ERROR', 'Failed to fetch session.', 500));
  }
});

export default router;
