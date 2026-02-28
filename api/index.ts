// Vercel serverless entry point.
// Vercel injects env vars directly — no dotenv needed.
// WebSocket (/ws/*) is NOT supported on Vercel serverless.
import app from '../src/app';

export default app;
