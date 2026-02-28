import express from 'express';
import cors from 'cors';
import authRouter from './routes/auth';
import exercisesRouter from './routes/exercises';
import sessionsRouter from './routes/sessions';
import subscriptionRouter from './routes/subscription';
import { errorHandler } from './middleware/errorHandler';
import { env } from './config/env';

const app = express();

// ─── CORS ─────────────────────────────────────────────────────────────────────
// Allow requests from the configured frontend origin(s).
// CORS_ORIGINS can be a comma-separated list for multiple domains.
const allowedOrigins = env.corsOrigins.split(',').map((o) => o.trim());

app.use(
  cors({
    origin: (origin, callback) => {
      // Allow requests with no origin (e.g. curl, Postman, server-to-server)
      if (!origin) return callback(null, true);
      if (allowedOrigins.includes(origin)) return callback(null, true);
      callback(new Error(`CORS: origin '${origin}' is not allowed.`));
    },
    methods: ['GET', 'POST', 'PATCH', 'PUT', 'DELETE', 'OPTIONS'],
    allowedHeaders: ['Content-Type', 'Authorization'],
    credentials: true,
  })
);

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
