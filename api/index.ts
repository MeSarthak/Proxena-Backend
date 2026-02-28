import { IncomingMessage, ServerResponse } from 'http';

// Lazy-load the Express app to prevent module-level crashes from silently
// killing the Vercel function before the handler can return an error.
// eslint-disable-next-line @typescript-eslint/no-explicit-any
let _app: any = null;
let _err: unknown = null;

function getApp() {
  if (_app) return _app;
  if (_err) return null;
  try {
    // Dynamic require avoids a module-level throw
    // eslint-disable-next-line @typescript-eslint/no-var-requires
    _app = require('../src/app').default;
  } catch (e) {
    _err = e;
    console.error('[api/index] Failed to load app:', e);
  }
  return _app;
}

export default function handler(req: IncomingMessage, res: ServerResponse): void {
  const app = getApp();
  if (!app) {
    const msg = _err instanceof Error ? _err.message : String(_err);
    res.writeHead(500, { 'Content-Type': 'application/json' });
    res.end(JSON.stringify({ error: 'App failed to initialize', detail: msg }));
    return;
  }
  app(req, res);
}
