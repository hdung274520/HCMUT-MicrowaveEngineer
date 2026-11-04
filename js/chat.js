// Chatbot: calls Gemma through a Cloudflare Worker proxy (worker/gemma-proxy.js) that holds the API key, so no key lives in the browser.
(() => {
  const PROXY = 'https://gemma-proxy.hdung274520.workers.dev'; // dán URL Worker vào đây sau khi deploy (xem worker/README.md)
  const $ = id => document.getElementById(id), log = $('chat-log'), msgs = [];
  const add = (cls, text) => { const d = document.createElement('div'); d.className = 'msg ' + cls; d.textContent = text; log.append(d); log.scrollTop = log.scrollHeight; return d; };
  // Current problem + answers + steps (LaTeX source, not the typeset SVG) so the bot explains exactly what is on screen.
  const context = () => 'Bạn là trợ giảng môn Kỹ thuật Siêu cao tần (Smith chart, phối hợp trở kháng). Trả lời ngắn gọn bằng tiếng Việt, bám sát lời giải sau.\n\n' +
    `Đề: ${$('problem').innerText}\nĐáp số: ${$('answers').innerText.replace(/\n+/g, ' ')}\n\nCác bước:\n` +
    (state.steps ?? []).map((s, i) => `${i + 1}. ${s.title.replace(/<[^>]+>/g, '')}\n${(s.tex || '').replace(/<[^>]+>/g, '')}\n${(s.why || '').replace(/<[^>]+>/g, '')}`).join('\n');

  $('chat-toggle').onclick = e => { const o = $('chat').hidden; $('chat').hidden = !o; e.target.setAttribute('aria-expanded', o); if (o) $('chat-in').focus(); };
  $('chat-form').onsubmit = async e => {
    e.preventDefault();
    const q = $('chat-in').value.trim();
    if (!q) return;
    $('chat-in').value = ''; add('user', q); msgs.push({ role: 'user', content: q });
    const out = add('bot', '…');
    try {
      // Gemma has no system role: prepend the solution context to the first user turn.
      const contents = msgs.map((m, n) => ({ role: m.role === 'user' ? 'user' : 'model', parts: [{ text: n ? m.content : context() + '\n\nCâu hỏi: ' + m.content }] }));
      if (!PROXY) throw new Error('chưa cấu hình PROXY trong js/chat.js');
      const r = await fetch(PROXY, {
        method: 'POST',
        headers: { 'content-type': 'application/json' },
        body: JSON.stringify({ contents }),
      });
      const j = await r.json();
      if (!r.ok) throw new Error(j.error?.message || r.status);
      const a = (j.candidates?.[0]?.content?.parts ?? []).filter(c => !c.thought).map(c => c.text ?? '').join('');
      out.textContent = a; msgs.push({ role: 'assistant', content: a });
    } catch (err) { out.textContent = 'Lỗi: ' + err.message; out.classList.add('err'); msgs.pop(); }
    log.scrollTop = log.scrollHeight;
  };
})();
