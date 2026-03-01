#!/bin/bash
# Azure App Service deployment script for Proxena Backend
# This script runs on every deployment (Kudu build agent).

set -e

echo "=== Proxena Backend Deployment ==="

# Install production dependencies only
echo "[1/3] Installing dependencies..."
npm ci --omit=dev --omit=optional

# Restore devDependencies needed for build (TypeScript compiler)
echo "[2/3] Installing build tools..."
npm ci

# Compile TypeScript and copy SQL migrations to dist/
echo "[3/3] Building..."
npm run build:compile

echo "=== Deployment complete. Start command: node dist/server.js ==="
