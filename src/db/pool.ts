import { Pool } from 'pg';
import { env } from '../config/env';

// When DATABASE_URL is set (Supabase / any hosted Postgres), use it directly
// and enable SSL (required by Supabase). Otherwise fall back to individual
// DB_* vars for local development.
const poolConfig = env.db.connectionString
  ? {
      connectionString: env.db.connectionString,
      ssl: { rejectUnauthorized: false },
      max: 20,
      idleTimeoutMillis: 30000,
      connectionTimeoutMillis: 15000,  // 15s — allows for cross-region latency
      query_timeout: 30000,
    }
  : {
      host: env.db.host,
      port: env.db.port,
      database: env.db.name,
      user: env.db.user,
      password: env.db.password,
      max: 20,
      idleTimeoutMillis: 30000,
      connectionTimeoutMillis: 5000,
      query_timeout: 10000,
    };

export const pool = new Pool(poolConfig);

pool.on('error', (err) => {
  console.error('Unexpected PostgreSQL pool error:', err);
});
