// Chatbot: calls the Gemma API (Google AI Studio) straight from the browser with the user's own key (kept in localStorage only).
// shortcut: key is exposed to this browser; fine for personal use, put a server proxy in front before sharing the site publicly.
(() => {
  const MODEL = 'gemma-3-27b-it', KEY = 'gemma_key';
  const $ = id => document.getElementById(id), log = $('chat-log'), msgs = [];
  const getKey = () => { try { return localStorage.getItem(KEY); } catch { return null; } };
  const askKey = () => {
    const k = prompt('Dán Google AI Studio API key (dùng cho Gemma) (chỉ lưu trong trình duyệt này):', getKey() || '');
    if (k?.trim()) try { localStorage.setItem(KEY, k.trim()); } catch {}
    return getKey();
  };
  const add = (cls, text) => { const d = document.createElement('div'); d.className = 'msg ' + cls; d.textContent = text; log.append(d); log.scrollTop = log.scrollHeight; return d; };
  // Current problem + answers + steps (LaTeX source, not the typeset SVG) so the bot explains exactly what is on screen.
  const context = () => 'Bạn là trợ giảng môn Kỹ thuật Siêu cao tần (Smith chart, phối hợp trở kháng). Trả lời ngắn gọn bằng tiếng Việt, bám sát lời giải sau.\n\n' +
    `Đề: ${$('problem').innerText}\nĐáp số: ${$('answers').innerText.replace(/\n+/g, ' ')}\n\nCác bước:\n` +
    (state.steps ?? []).map((s, i) => `${i + 1}. ${s.title.replace(/<[^>]+>/g, '')}\n${(s.tex || '').replace(/<[^>]+>/g, '')}\n${(s.why || '').replace(/<[^>]+>/g, '')}`).join('\n');

  $('chat-toggle').onclick = e => { const o = $('chat').hidden; $('chat').hidden = !o; e.target.setAttribute('aria-expanded', o); if (o) $('chat-in').focus(); };
  $('chat-key').onclick = askKey;
  $('chat-form').onsubmit = async e => {
    e.preventDefault();
    const q = $('chat-in').value.trim(), key = getKey() || askKey();
    if (!q || !key) return;
    $('chat-in').value = ''; add('user', q); msgs.push({ role: 'user', content: q });
    const out = add('bot', '…');
    try {
      // Gemma has no system role: prepend the solution context to the first user turn.
      const contents = msgs.map((m, n) => ({ role: m.role === 'user' ? 'user' : 'model', parts: [{ text: n ? m.content : context() + '\n\nCâu hỏi: ' + m.content }] }));
      const r = await fetch(`https://generativelanguage.googleapis.com/v1beta/models/${MODEL}:generateContent`, {
        method: 'POST',
        headers: { 'content-type': 'application/json', 'x-goog-api-key': key },
        body: JSON.stringify({ contents, generationConfig: { maxOutputTokens: 1024 } }),
      });
      const j = await r.json();
      if (!r.ok) throw new Error(j.error?.message || r.status);
      const a = (j.candidates?.[0]?.content?.parts ?? []).map(c => c.text ?? '').join('');
      out.textContent = a; msgs.push({ role: 'assistant', content: a });
    } catch (err) { out.textContent = 'Lỗi: ' + err.message; out.classList.add('err'); msgs.pop(); }
    log.scrollTop = log.scrollHeight;
  };
})();
