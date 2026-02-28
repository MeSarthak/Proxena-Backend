import type { IncomingMessage, ServerResponse } from 'http';

// Wrap the import so a startup error returns a readable 500 instead of
// an opaque FUNCTION_INVOCATION_FAILED from Vercel.
let handler: ((req: IncomingMessage, res: ServerResponse) => void) | null = null;
let startupError: unknown = null;

try {
  // eslint-disable-next-line @typescript-eslint/no-var-requires
  handler = require('../src/app').default;
} catch (err) {
  startupError = err;
  console.error('[api/index] Startup error:', err);
}

export default function (req: IncomingMessage, res: ServerResponse): void {
  if (startupError || !handler) {
    const message =
      startupError instanceof Error ? startupError.message : String(startupError);
    res.writeHead(500, { 'Content-Type': 'application/json' });
    res.end(JSON.stringify({ error: 'Startup failed', detail: message }));
    return;
  }
  handler(req, res);
}
