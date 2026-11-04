// Cloudflare Worker: keeps the Google AI Studio key server-side. Deploy: see worker/README.md
const ALLOWED = 'https://hdung274520.github.io', MODELS = ['gemini-flash-lite-latest', 'gemini-3.5-flash-lite', 'gemini-3.8-flash', 'gemini-flash-latest']; // fast lite first, fall back when busy
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
      // Busy models can hang for minutes: give each 15 s, then try the next.
      r = await fetch(`https://generativelanguage.googleapis.com/v1beta/models/${m}:generateContent`, {
        method: 'POST',
        headers: { 'content-type': 'application/json', 'x-goog-api-key': env.GEMINI_KEY },
        body: JSON.stringify({ contents, generationConfig: { maxOutputTokens: 1024, thinkingConfig: { thinkingLevel: 'low' } } }),
        signal: AbortSignal.timeout(15000),
      }).catch(() => null);
      if (r && ![500, 503, 429, 404].includes(r.status)) break;
    }
    if (!r) return new Response(JSON.stringify({ error: { message: 'Máy chủ AI đang quá tải, thử lại sau ít phút.' } }), { status: 503, headers: { ...cors, 'content-type': 'application/json' } });
    return new Response(r.body, { status: r.status, headers: { ...cors, 'content-type': 'application/json' } });
  },
};
