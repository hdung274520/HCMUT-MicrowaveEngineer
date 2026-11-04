# Deploy proxy (1 lần)
```
cd worker
npx wrangler login
npx wrangler deploy gemma-proxy.js --name gemma-proxy --compatibility-date 2025-01-01
npx wrangler secret put GEMINI_KEY --name gemma-proxy   # dán key AI Studio khi được hỏi
```
Lấy URL `https://gemma-proxy.<tên>.workers.dev` dán vào `PROXY` đầu file `js/chat.js`.
