# Proxena — Backend

Node.js/Express REST API + WebSocket server that powers real-time English pronunciation coaching. Audio is streamed from the browser to Azure Cognitive Services Speech SDK for word-level pronunciation assessment, and results are persisted in PostgreSQL.

---

## Tech Stack

| Layer | Technology |
|---|---|
| Runtime | Node.js (ESM via TypeScript) |
| HTTP Framework | Express 5 |
| WebSocket | ws |
| Database | PostgreSQL 16 (via `pg`) |
| Auth | Firebase Admin SDK (JWT verification) |
| Speech AI | Azure Cognitive Services Speech SDK |
| Language | TypeScript 5 |
| Dev server | ts-node-dev |

---

## Prerequisites

- Node.js 20+
- PostgreSQL 16 — either **Supabase** (recommended) or local Docker
- A Firebase project with a service account
- An Azure Cognitive Services Speech resource

---

## Database — Supabase Setup

Proxena uses Supabase as its hosted PostgreSQL provider. The app connects via the standard `pg` driver using Supabase's connection pooler — no Supabase SDK required.

### 1. Create a Supabase project

Go to [supabase.com](https://supabase.com) → New project. Choose a region close to your users.

### 2. Get the connection string

In your Supabase project:
- Go to **Project Settings → Database → Connection string**
- Select the **Transaction** tab (port `6543`) — this is the pooled connection, suitable for serverless/Node apps
- Copy the URI — it looks like:
  ```
  postgresql://postgres.[project-ref]:[password]@aws-0-[region].pooler.supabase.com:6543/postgres
  ```
- Set this as `DATABASE_URL` in your `.env`

### 3. Run migrations

```bash
npm run migrate
```

The migration runner connects to Supabase and applies all SQL files from `src/migrations/` in order. Supabase's built-in SQL editor can also be used to run them manually.

---

## Getting Started

### 1. Install dependencies

```bash
npm install
```

### 2. Configure environment

```bash
cp .env.example .env
```

Set `DATABASE_URL` to your Supabase connection string. For local development without Supabase, comment out `DATABASE_URL` and fill in the `DB_*` vars instead (see [Environment Variables](#environment-variables)).

### 3. (Local only) Start PostgreSQL via Docker

Skip this step if using Supabase.

```bash
docker-compose up -d
```

This starts a PostgreSQL 16 container on `localhost:5432` with:
- Database: `proxena`
- User: `proxena_user`
- Password: `proxena_pass`

### 4. Run migrations

```bash
npm run migrate
```

Migrations run in order from `src/migrations/`. They are idempotent — safe to run multiple times.

### 5. Start the development server

```bash
npm run dev
```

The server starts on `http://localhost:3000` with hot-reload via `ts-node-dev`.

```
PostgreSQL connected.
Proxena backend running on port 3000 [development]
REST API:  http://localhost:3000/v1
WebSocket: ws://localhost:3000/ws/session/<id>?token=<firebase_token>
Health:    http://localhost:3000/health
```

---

## Scripts

| Script | Description |
|---|---|
| `npm run dev` | Start dev server with hot-reload |
| `npm run build` | Compile TypeScript to `dist/` |
| `npm start` | Run compiled production build |
| `npm run migrate` | Run all SQL migrations against the DB |

---

## Environment Variables

All variables are loaded from `.env` via `dotenv`. See `.env.example` for the full template.

```env
# Server
PORT=3000
NODE_ENV=development
API_BASE_URL=https://api.yourdomain.com

# CORS — comma-separated list of allowed frontend origins
# Default (localhost:5173) is used when unset — no need to set in development
CORS_ORIGINS=https://app.yourdomain.com

# Database — Option A: Supabase (recommended)
# Transaction-mode connection string from Supabase Dashboard → Settings → Database
DATABASE_URL=postgresql://postgres.[ref]:[password]@aws-0-[region].pooler.supabase.com:6543/postgres

# Database — Option B: local Postgres (leave DATABASE_URL unset)
# DB_HOST=localhost
# DB_PORT=5432
# DB_NAME=proxena
# DB_USER=postgres
# DB_PASSWORD=yourpassword

# Firebase Admin SDK
FIREBASE_PROJECT_ID=your-firebase-project-id
FIREBASE_CLIENT_EMAIL=firebase-adminsdk-xxxxx@your-project.iam.gserviceaccount.com
FIREBASE_PRIVATE_KEY="-----BEGIN PRIVATE KEY-----\nYOUR_KEY_HERE\n-----END PRIVATE KEY-----\n"

# Azure Cognitive Services Speech
AZURE_SPEECH_KEY=your_azure_speech_key
AZURE_SPEECH_REGION=eastus

# Usage limits (per day)
FREE_PLAN_DAILY_MINUTES=5
FREE_PLAN_DAILY_SESSIONS=3
PRO_PLAN_DAILY_MINUTES=999
PRO_PLAN_DAILY_SESSIONS=999

# Session
MAX_SESSION_DURATION_SECONDS=120
```

`DATABASE_URL` takes priority over all `DB_*` vars. If both are present, `DATABASE_URL` wins.

---

## Project Structure

```
src/
├── server.ts              # Entry point — HTTP server + WebSocket upgrade handler
├── app.ts                 # Express app, middleware, route registration
├── config/
│   └── env.ts             # Typed, validated env var loader
├── db/
│   ├── pool.ts            # pg connection pool (singleton)
│   └── migrate.ts         # Sequential SQL migration runner
├── middleware/
│   ├── auth.ts            # Firebase JWT verification + user upsert
│   └── errorHandler.ts    # Centralised AppError handler
├── routes/
│   ├── auth.ts            # GET /v1/auth/me, PATCH /v1/auth/profile
│   ├── exercises.ts       # GET /v1/exercises, GET /v1/exercises/:id
│   ├── sessions.ts        # POST /v1/sessions/start, GET history & detail
│   └── subscription.ts    # GET /v1/subscription, POST /v1/subscription/upgrade (stub)
├── services/
│   ├── azure.ts           # Azure Speech SDK stream factory
│   ├── firebase.ts        # Firebase Admin SDK initialisation
│   ├── sessionWriter.ts   # Transactional bulk word-result + session write
│   └── usageEnforcement.ts# Daily minutes/session quota check
├── ws/
│   └── sessionHandler.ts  # WebSocket handler — audio in, pronunciation events out
├── types/
│   └── index.ts           # DB row types, Express augmentation, WS message types
└── migrations/
    ├── 001_create_users.sql
    ├── 002_create_exercises.sql
    ├── 003_create_sessions.sql
    ├── 004_create_word_results.sql
    ├── 005_create_subscriptions.sql
    ├── 006_create_usage_tracking.sql
    └── 007_seed_exercises.sql
```

---

## API Reference

All routes are prefixed with `/v1`. Protected routes require a Firebase ID token in the `Authorization: Bearer <token>` header.

### Auth

| Method | Path | Auth | Description |
|---|---|---|---|
| `GET` | `/auth/me` | Yes | Returns the authenticated user's profile, subscription, and today's usage |
| `PATCH` | `/auth/profile` | Yes | Updates `nativeLanguage` and/or `targetAccent` |

**`PATCH /auth/profile` body:**
```json
{ "nativeLanguage": "Hindi", "targetAccent": "en-US" }
```
Valid accents: `en-US`, `en-GB`, `en-AU`, `en-IN`

---

### Exercises

| Method | Path | Auth | Description |
|---|---|---|---|
| `GET` | `/exercises` | Yes | List exercises (filter by `category`, `difficulty`) |
| `GET` | `/exercises/:publicId` | Yes | Get a single exercise with full text |

---

### Sessions

| Method | Path | Auth | Description |
|---|---|---|---|
| `POST` | `/sessions/start` | Yes | Creates a pending session, returns a WebSocket URL |
| `GET` | `/sessions/history` | Yes | Paginated session history (`?page=1&limit=10`) |
| `GET` | `/sessions/:publicId` | Yes | Session detail with word-level results |

**`POST /sessions/start` body:**
```json
{ "exercisePublicId": "<uuid>" }
```

**Response:**
```json
{ "sessionPublicId": "<uuid>", "wsUrl": "ws://localhost:3000/ws/session/<uuid>" }
```

---

### Subscription

| Method | Path | Auth | Description |
|---|---|---|---|
| `GET` | `/subscription` | Yes | Returns current plan type, status, and expiry |
| `POST` | `/subscription/upgrade` | Yes | Payment integration stub (returns 501) |

---

## WebSocket Protocol

**Connection:** `ws://localhost:3000/ws/session/<sessionPublicId>?token=<firebaseIdToken>`

The token is passed as a query parameter because the browser WebSocket API does not support custom headers.

### Client → Server

| Frame | Description |
|---|---|
| Binary | Raw PCM audio (Int16, 16 kHz, mono) streamed continuously |
| Text `{"type":"stop"}` | Signals end of recording; triggers session finalisation |

### Server → Client

```jsonc
// Word result (emitted in real time)
{ "type": "word", "word": "pronunciation", "accuracy": 87.5, "status": "correct" }

// Session summary (emitted once after stop)
{ "type": "summary", "overallAccuracy": 82.3, "fluencyScore": 78.1, "durationSeconds": 34 }

// Error
{ "type": "error", "message": "Daily limit exceeded." }
```

Word `status` values: `correct` (≥80%), `partial` (≥50%), `incorrect` (<50%), `skipped`

---

## Database Schema

```
users              — Firebase UID, email, native_language, target_accent
exercises          — title, category, difficulty, text_content
sessions           — user_id, exercise_id, status, overall_accuracy, fluency_score, duration_seconds
word_results       — session_id, word, accuracy_score, error_type
subscriptions      — user_id, plan_type (free|pro), status, started_at, expires_at
usage_tracking     — user_id, usage_date, minutes_used, sessions_count
```

---

## Authentication Flow

1. Client signs in via Firebase (email/password or Google)
2. Firebase issues a JWT ID token
3. Every REST request sends `Authorization: Bearer <token>`
4. The `authenticate` middleware verifies the token with Firebase Admin SDK and upserts the user into PostgreSQL on first call — no separate registration endpoint is needed

---

## Usage Limits

Daily quotas are enforced at two points:

1. `POST /sessions/start` — checked before creating the session row
2. WebSocket handler — checked again before opening the Azure stream

| Plan | Minutes/day | Sessions/day |
|---|---|---|
| Free | 5 | 3 |
| Pro | Unlimited (999) | Unlimited (999) |

Limits are configurable via environment variables.
