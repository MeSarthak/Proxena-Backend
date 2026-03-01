import dotenv from 'dotenv';
dotenv.config();

function required(key: string): string {
  const val = process.env[key];
  if (!val) throw new Error(`Missing required environment variable: ${key}`);
  return val;
}

function optional(key: string, defaultValue: string): string {
  return process.env[key] ?? defaultValue;
}

export const env = {
  NODE_ENV: optional('NODE_ENV', 'development'),
  PORT: parseInt(optional('PORT', '3000'), 10),
  API_BASE_URL: optional('API_BASE_URL', 'http://localhost:3000'),

  // DATABASE_URL takes precedence over individual DB_* vars.
  // Supabase provides a "Connection string" (Transaction mode, port 6543) in
  // Project Settings → Database → Connection string.
  db: {
    connectionString: process.env['DATABASE_URL'] ?? null,
    host: optional('DB_HOST', 'localhost'),
    port: parseInt(optional('DB_PORT', '5432'), 10),
    name: optional('DB_NAME', 'postgres'),
    user: optional('DB_USER', 'postgres'),
    password: optional('DB_PASSWORD', ''),
  },

  firebase: {
    projectId: required('FIREBASE_PROJECT_ID'),
    clientEmail: required('FIREBASE_CLIENT_EMAIL'),
    privateKey: required('FIREBASE_PRIVATE_KEY').replace(/\\n/g, '\n'),
  },

  azure: {
    speechKey: required('AZURE_SPEECH_KEY'),
    speechRegion: required('AZURE_SPEECH_REGION'),
  },

  limits: {
    freeDailySessions: parseInt(optional('FREE_PLAN_DAILY_SESSIONS', '3'), 10),
    proDailySessions: parseInt(optional('PRO_PLAN_DAILY_SESSIONS', '999'), 10),
  },

  maxSessionDurationSeconds: parseInt(optional('MAX_SESSION_DURATION_SECONDS', '1800'), 10),
  proMaxSessionDurationSeconds: parseInt(optional('PRO_MAX_SESSION_DURATION_SECONDS', '18000'), 10),

  // Comma-separated list of allowed frontend origins for CORS.
  // Example: https://app.yourdomain.com,https://www.yourdomain.com
  // In development defaults to localhost:5173 (Vite default port).
  corsOrigins: optional('CORS_ORIGINS', 'http://localhost:5173'),
} as const;
