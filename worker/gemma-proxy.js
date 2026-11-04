// Cloudflare Worker: keeps the Google AI Studio key server-side. Deploy: see worker/README.md
const ALLOWED = 'https://hdung274520.github.io', MODELS = ['gemini-3.8-flash', 'gemini-3.7-flash', 'gemini-3.5-flash', 'gemini-flash-latest']; // fall back when one is busy
export default {
  async fetch(req, env) {
    const o = req.headers.get('origin') || '';
    const cors = { 'access-control-allow-origin': o, 'access-control-allow-headers': 'content-type', vary: 'origin' };
    if (req.method === 'OPTIONS') return new Response(null, { status: 204, headers: cors });
    if (req.method !== 'POST' || (o !== ALLOWED && !o.startsWith('http://localhost'))) return new Response('forbidden', { status: 403 });
    const { contents } = await req.json().catch(() => ({}));
    if (!Array.isArray(contents) || JSON.stringify(contents).length > 60000) return new Response('bad request', { status: 400, headers: cors });
    let r;
    for (const m of MODELS) {
      r = await fetch(`https://generativelanguage.googleapis.com/v1beta/models/${m}:generateContent`, {
        method: 'POST',
        headers: { 'content-type': 'application/json', 'x-goog-api-key': env.GEMINI_KEY },
        body: JSON.stringify({ contents, generationConfig: { maxOutputTokens: 1024 } }),
      });
      if (![500, 503, 429, 404].includes(r.status)) break;
    }
    return new Response(r.body, { status: r.status, headers: { ...cors, 'content-type': 'application/json' } });
  },
};
