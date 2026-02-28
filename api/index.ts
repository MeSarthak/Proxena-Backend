// Vercel serverless entry point.
// Vercel imports this file and calls the exported handler — no http.createServer needed.
// Note: WebSocket (/ws/*) is NOT supported on Vercel serverless; only REST API works here.
import 'dotenv/config';
import app from '../src/app';

export default app;
