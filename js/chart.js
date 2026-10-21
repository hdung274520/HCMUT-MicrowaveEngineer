// SVG Smith chart (classic Z grid): level-of-detail grid like the printed chart, WTG/WTL and reflection-angle scales,
// hover readout, zoom/pan (wheel, buttons, drag, pinch), lettered points and step highlighting.
// Zoom keeps strokes, labels and point marks at constant screen size via the CSS variable --k (= view width / full width).
const R = 300, VB = [-385, -385, 770, 770], NS = 'http://www.w3.org/2000/svg';
const MAJOR = [0.2, 0.5, 1, 2, 5];
const steps = (a, b, s) => Array.from({ length: Math.round((b - a) / s) + 1 }, (_, i) => +(a + i * s).toFixed(3));
// Grid tiers, finer near the short-circuit end like the printed chart: [values, cap] where an r circle spans |x| ≤ cap
// and an x arc spans r ≤ cap. Level n shows from zoom LOD_ZOOM[n].
const LOD_ZOOM = [1, 2, 5];
const LOD = [
  [[[...MAJOR, 10, 20, 50], Infinity], [[0.1, 0.3, 0.4, 0.6, 0.7, 0.8, 0.9, 1.2, 1.4, 1.6, 1.8], 5], [[3, 4], 10]],
  [[steps(0.05, 0.95, 0.05), 2], [steps(1.1, 1.9, 0.1), 2], [[2.5, 3.5, 4.5], 5], [[6, 7, 8, 9], 10]],
  [[steps(0.01, 0.49, 0.01), 0.5], [steps(0.52, 0.98, 0.02), 1], [steps(1.05, 1.95, 0.05), 1], [steps(2.2, 4.8, 0.2), 3]],
];

class SmithChart {
  constructor(svg, readout) {
    this.svg = svg;
    this.readout = readout;
    this.ptrs = new Map();
    this.drawGrid();
    this.layer = this.el('g', { class: 'layer' });
    this.bindEvents();
    this.resetView();
  }

  el(tag, attrs, parent = this.svg) {
    const e = document.createElementNS(NS, tag);
    for (const k in attrs) e.setAttribute(k, attrs[k]);
    return parent.appendChild(e);
  }

  xy(G) { return [G.re * R, -G.im * R]; }

  text(x, y, str, cls, parent) { this.el('text', { x, y, class: cls }, parent).textContent = str; }

  // SVG arc on a circle (centre c, radius rad, svg coords) from Γ1 to Γ2 passing through Γ3.
  arc(G1, G2, G3, [cx, cy], rad) {
    const [p1, p2, p3] = [G1, G2, G3].map(G => this.xy(G)), ang = ([x, y]) => Math.atan2(y - cy, x - cx);
    const tau = 2 * Math.PI, d12 = (ang(p2) - ang(p1) + tau) % tau, d13 = (ang(p3) - ang(p1) + tau) % tau;
    const sweep = d13 < d12 ? 1 : 0, span = sweep ? d12 : tau - d12;
    return `M${p1[0].toFixed(2)} ${p1[1].toFixed(2)}A${rad.toFixed(2)} ${rad.toFixed(2)} 0 ${span > Math.PI ? 1 : 0} ${sweep} ${p2[0].toFixed(2)} ${p2[1].toFixed(2)}`;
  }

  rCircle(r, cap) {
    const c = [(R * r) / (1 + r), 0], rad = R / (1 + r);
    if (cap === Infinity) return `M${c[0] - rad} 0a${rad} ${rad} 0 1 0 ${2 * rad} 0a${rad} ${rad} 0 1 0 ${-2 * rad} 0`;
    return this.arc(RF.gamma(new Complex(r, -cap)), RF.gamma(new Complex(r, cap)), RF.gamma(new Complex(r)), c, rad);
  }

  xArc(x, cap) {
    const end = cap === Infinity ? new Complex(1) : RF.gamma(new Complex(cap, x));
    return this.arc(RF.gamma(new Complex(0, x)), end, RF.gamma(new Complex(cap === Infinity ? 1 : cap / 2, x)), [R, -R / x], R / Math.abs(x));
  }

  drawGrid() {
    this.el('circle', { r: R }, this.el('clipPath', { id: 'unit' }, this.el('defs', {})));
    const grid = this.el('g', { class: 'grid' });
    const zg = this.el('g', { class: 'zgrid', 'clip-path': 'url(#unit)' }, grid);
    const seen = new Set(), level = {};
    LOD.forEach((sets, n) => {
      let minor = '', major = '';
      for (const [vals, cap] of sets) for (const v of vals) {
        if (seen.has(v)) continue;
        seen.add(v);
        level[v] = n;
        const d = this.rCircle(v, cap) + this.xArc(v, cap) + this.xArc(-v, cap);
        if (MAJOR.includes(v)) major += d; else minor += d;
      }
      this.el('path', { d: minor, class: `lod-${n}` }, zg);
      if (major) this.el('path', { d: major, class: `major lod-${n}` }, zg);
    });
    this.el('line', { x1: -R, x2: R, class: 'major' }, zg);
    this.el('circle', { r: R, class: 'outer' }, grid);

    // Value labels: majors always, the rest one level after their grid line appears.
    for (const v of Object.keys(level).map(Number)) {
      const n = MAJOR.includes(v) ? 0 : level[v] + 1;
      if (n > 2) continue;
      const g = this.el('g', { class: `lod-${n}` }, grid), s = String(v);
      this.text((R * (v - 1)) / (v + 1) + 2, -3, s, 'lbl', g);
      for (const k of [1, -1]) {
        const [x, y] = this.xy(RF.gamma(new Complex(0, k * v)).mul(0.955));
        this.text(x, y, (k < 0 ? '−' : '+') + 'j' + s, 'lbl mid', g);
      }
    }

    // Outer rings, inside out as on the printed chart: transmission angle, reflection angle, WTL, WTG.
    const pol = (deg, r) => [r * Math.cos((deg * Math.PI) / 180), -r * Math.sin((deg * Math.PI) / 180)];
    const tick = (deg, r1, r2, g) => { const [a, b] = [pol(deg, r1), pol(deg, r2)]; this.el('line', { x1: a[0], y1: a[1], x2: b[0], y2: b[1], class: 'tick' }, g); };
    const lab = (deg, r, txt, cls, g) => { const [x, y] = pol(deg, r); this.text(x, y, txt, `${cls} mid`, g); };
    const lod = n => this.el('g', { class: `lod-${n}` }, grid);
    const L1 = lod(1), L2 = lod(2);
    for (const r of [R + 16, R + 32, R + 48, R + 64]) this.el('circle', { r, class: 'ring' }, grid);
    // Angle of τ = 1 + Γ is half the reflection angle at the rim (inscribed angle from Γ = −1).
    for (let p = -89; p <= 90; p++) {
      tick(2 * p, R, R + (p % 10 === 0 ? 6 : p % 5 === 0 ? 4 : 2.5), p % 5 === 0 ? grid : L1);
      if (p % 10 === 0) lab(2 * p, R + 11, p === 90 ? '±90' : p, 'ang', grid);
    }
    for (let d = -179; d <= 180; d++) {
      tick(d, R + 16, R + 16 + (d % 10 === 0 ? 5 : d % 5 === 0 ? 3.5 : 2), d % 5 === 0 ? grid : d % 2 === 0 ? L1 : L2);
      if (d % 10 === 0) lab(d, R + 26, d === 180 ? '±180' : d, 'ang', grid);
    }
    for (let i = 0; i < 250; i++) {
      const w = i / 500, a = 180 - 720 * w, len = i % 25 === 0 ? 6 : i % 5 === 0 ? 4 : 2.5, g = i % 5 === 0 ? grid : L1;
      tick(a, R + 48 - len, R + 48 + len, g);
      if (i % 5 === 0) {
        lab(a, R + 39, (((500 - i) % 250) / 500).toFixed(2), 'wtl', grid);
        lab(a, R + 57, w.toFixed(2), 'wtg', grid);
      }
    }
    // Curved captions outside the rings and along the inner rim, like the printed chart.
    const defs = this.svg.querySelector('defs');
    const caption = (id, r, a1, a2, sweep, txt, cls) => {
      const [p, q] = [pol(a1, r), pol(a2, r)];
      this.el('path', { id, d: `M${p[0]} ${p[1]}A${r} ${r} 0 0 ${sweep} ${q[0]} ${q[1]}` }, defs);
      const t = this.el('text', { class: `cap ${cls}` }, grid);
      this.el('textPath', { href: `#${id}`, startOffset: '50%', 'text-anchor': 'middle' }, t).textContent = txt;
    };
    caption('c-wtg', R + 68, 175, 110, 1, 'BƯỚC SÓNG VỀ PHÍA NGUỒN (WTG) →', 'wtg');
    caption('c-wtl', R + 76, 185, 250, 0, '← BƯỚC SÓNG VỀ PHÍA TẢI (WTL)', 'wtl'); // counter-clockwise so it reads upright at the bottom
    caption('c-ang', R + 68, 70, 5, 1, 'GÓC HỆ SỐ PHẢN XẠ (ĐỘ)', 'ang');
    caption('c-tr', R + 68, -5, -70, 1, 'GÓC HỆ SỐ TRUYỀN (ĐỘ)', 'ang');
    caption('c-ind', R - 9, 165, 105, 1, 'ĐIỆN KHÁNG CẢM (+jX/Z₀) HOẶC ĐIỆN NẠP DUNG (+jB/Y₀)', 'rim');
    caption('c-cap', R - 3, 195, 255, 0, 'ĐIỆN KHÁNG DUNG (−jX/Z₀) HOẶC ĐIỆN NẠP CẢM (−jB/Y₀)', 'rim');
    this.text(-150, 11, 'THÀNH PHẦN ĐIỆN TRỞ (R/Z₀) HOẶC ĐIỆN DẪN (G/Y₀)', 'cap rim mid', grid);
  }

  setView(vb) {
    this.vb = vb;
    const k = vb[2] / VB[2], z = 1 / k;
    this.svg.setAttribute('viewBox', vb.join(' '));
    this.svg.style.setProperty('--k', k);
    this.svg.dataset.lod = z >= LOD_ZOOM[2] ? 2 : z >= LOD_ZOOM[1] ? 1 : 0;
  }

  resetView() { this.setView([...VB]); }

  // Zoom by factor k (k < 1 zooms in) about svg point p, starting from view `from`.
  zoomAt(p, k, from = this.vb) {
    const w = Math.min(Math.max(from[2] * k, 40), VB[2] * 1.5);
    k = w / from[2];
    this.setView([p.x - (p.x - from[0]) * k, p.y - (p.y - from[1]) * k, w, w]);
  }

  zoomCenter(k) { this.zoomAt({ x: this.vb[0] + this.vb[2] / 2, y: this.vb[1] + this.vb[3] / 2 }, k); }

  toSvg(e) {
    const p = this.svg.createSVGPoint();
    p.x = e.clientX;
    p.y = e.clientY;
    return p.matrixTransform(this.svg.getScreenCTM().inverse());
  }

  bindEvents() {
    const s = this.svg, idle = 'Di chuột lên giản đồ để đọc toạ độ · cuộn hoặc chụm 2 ngón để phóng to';
    const dist = () => { const [a, b] = [...this.ptrs.values()]; return Math.hypot(a.clientX - b.clientX, a.clientY - b.clientY); };
    this.readout.textContent = idle;
    s.addEventListener('pointerdown', e => {
      this.ptrs.set(e.pointerId, e);
      s.setPointerCapture(e.pointerId);
      if (this.ptrs.size === 1) this.drag = { x: e.clientX, y: e.clientY, vb: [...this.vb] };
      if (this.ptrs.size === 2) {
        const [a, b] = [...this.ptrs.values()];
        this.drag = null;
        this.pinch = { d: dist(), vb: [...this.vb], p: this.toSvg({ clientX: (a.clientX + b.clientX) / 2, clientY: (a.clientY + b.clientY) / 2 }) };
      }
    });
    const end = e => { this.ptrs.delete(e.pointerId); this.drag = null; this.pinch = null; };
    s.addEventListener('pointerup', end);
    s.addEventListener('pointercancel', end);
    s.addEventListener('pointerleave', () => (this.readout.textContent = idle));
    s.addEventListener('pointermove', e => {
      if (this.ptrs.has(e.pointerId)) this.ptrs.set(e.pointerId, e);
      if (this.pinch && this.ptrs.size === 2) return this.zoomAt(this.pinch.p, this.pinch.d / dist(), this.pinch.vb);
      if (this.drag) {
        const k = this.vb[2] / s.getBoundingClientRect().width, d = this.drag;
        this.setView([d.vb[0] - (e.clientX - d.x) * k, d.vb[1] - (e.clientY - d.y) * k, d.vb[2], d.vb[3]]);
      }
      this.hover(e);
    });
    s.addEventListener('wheel', e => { e.preventDefault(); this.zoomAt(this.toSvg(e), e.deltaY > 0 ? 1.15 : 1 / 1.15); }, { passive: false });
  }

  hover(e) {
    const p = this.toSvg(e), G = new Complex(p.x / R, -p.y / R), m = G.abs();
    if (m > 1) { this.readout.textContent = 'Ngoài giản đồ (|Γ| > 1)'; return; }
    const w = RF.zOf(G);
    this.readout.textContent = `Đọc tại điểm ${w.toString(3)}  ·  đối xứng qua tâm ${w.inv().toString(3)}  ·  |Γ| ${m.toFixed(3)} ∠${deg(G.arg()).toFixed(1)}°  ·  WTG ${RF.wtg(G).toFixed(3)}λ`;
  }

  // ops: {t:'circle', c, r, color, dash, fill} | {t:'path', pts, color, faint, to} | {t:'point', g, label, color}
  draw(ops, animate = true) {
    this.layer.replaceChildren();
    this.layer.classList.toggle('still', !animate);
    let t = 0;
    for (const op of ops) {
      const cls = `k-${op.color ?? 'ink'}`, style = `animation-delay:${t.toFixed(2)}s`;
      if (op.t === 'circle') {
        const [cx, cy] = this.xy(op.c);
        this.el('circle', { cx, cy, r: op.r * R, style, class: `${cls} ref${op.dash ? ' dash' : ''}${op.fill ? ' fill' : ''}` }, this.layer);
      } else if (op.t === 'path') {
        const xy = op.pts.map(G => this.xy(G)), d = 'M' + xy.map(v => v.map(n => n.toFixed(2)).join(' ')).join('L');
        this.el('path', { d, pathLength: 1, style, class: `${cls} trace${op.faint ? ' faint' : ''}`, 'data-to': op.to ?? '' }, this.layer);
        t += 0.7;
        if (!op.faint) this.arrow(xy, cls, op.to, `animation-delay:${(t - 0.05).toFixed(2)}s`);
      } else {
        const [x, y] = this.xy(op.g), m = Math.hypot(x, y);
        // Badge sits outward from the centre, or inward for points on the rim.
        const [ux, uy] = m < 15 ? [0.7, -0.7] : [(x / m) * (m > 270 ? -1 : 1), (y / m) * (m > 270 ? -1 : 1)];
        const g = this.el('g', { transform: `translate(${x.toFixed(2)} ${y.toFixed(2)})`, style, class: `${cls} pt`, 'data-label': op.label }, this.layer);
        const mark = this.el('g', { class: 'mark' }, g);
        this.el('circle', { r: 4.5, class: 'dot' }, mark);
        this.el('circle', { cx: ux * 22, cy: uy * 22, r: 12, class: 'badge' }, mark);
        this.text(ux * 22, uy * 22 + 0.5, op.label, 'badge-t mid', mark);
        t += 0.2;
      }
    }
  }

  arrow(xy, cls, to, style) {
    const n = xy.length - 1, [x, y] = xy[n], [px, py] = xy[Math.max(0, n - 8)];
    if (Math.hypot(x - px, y - py) < 0.01) return;
    const a = (Math.atan2(y - py, x - px) * 180) / Math.PI;
    const g = this.el('g', { transform: `translate(${x.toFixed(2)} ${y.toFixed(2)}) rotate(${a.toFixed(1)})`, style, class: `${cls} pt head`, 'data-to': to ?? '' }, this.layer);
    this.el('polygon', { points: '0,0 -10.1,-4.3 -10.1,4.3' }, this.el('g', { class: 'mark' }, g));
  }

  // Light the points and path segments of one step; null clears.
  highlight(letters) {
    const on = new Set(letters ?? []);
    this.layer.classList.toggle('is-dim', on.size > 0);
    for (const e of this.layer.children) e.classList.toggle('is-on', on.has(e.dataset.label) || on.has(e.dataset.to));
  }
}
