import express from 'express';
import authRouter from './routes/auth';
import exercisesRouter from './routes/exercises';
import sessionsRouter from './routes/sessions';
import subscriptionRouter from './routes/subscription';
import { errorHandler } from './middleware/errorHandler';

const app = express();

app.use(express.json());

// Health check (no auth required)
app.get('/health', (_req, res) => {
  res.json({ status: 'ok', timestamp: new Date().toISOString() });
});

// API v1 routes
app.use('/v1/auth', authRouter);
app.use('/v1/exercises', exercisesRouter);
app.use('/v1/sessions', sessionsRouter);
app.use('/v1/subscription', subscriptionRouter);

// 404 handler
app.use((_req, res) => {
  res.status(404).json({
    error: { code: 'NOT_FOUND', message: 'Route not found.' },
  });
});

// Global error handler (must be last)
app.use(errorHandler);

export default app;
