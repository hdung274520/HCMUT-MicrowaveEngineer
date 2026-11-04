// UI wiring: module tabs, input form, answers, chart with solution tabs and legend, step list linked to the chart.
const FREQ = [['GHz', 'GHz'], ['MHz', 'MHz'], ['rad', 'rad/s']];
const STUB = [['short', 'Ngắn mạch'], ['open', 'Hở mạch']];
const num = (id, label, value, unit = '', o = {}) => ({ id, label, value, unit, ...o });
const sel = (id, label, options, value = options[0][0], o = {}) => ({ id, label, options, value, ...o });
const Z0 = v => num('Z0', 'Z<sub>0</sub>', v, 'Ω', { wide: true });
const RL = v => num('RL', 'R<sub>L</sub>', v, 'Ω');
const XL = v => num('XL', 'X<sub>L</sub>', v, 'Ω');
const FQ = (v, u, o = {}) => num('f', 'Tần số', v, '', { units: FREQ, unitId: 'fUnit', unitValue: u, ...o });
const ER = num('er', 'ε<sub>r</sub>', '', '', { optional: true, placeholder: '1' });
const OPT = { optional: true, placeholder: 'tuỳ chọn' };

// Defaults are worked examples from the course slides.
const MODULES = [
  { name: 'Đường truyền', solve: solveLine, fields: [Z0(50), RL(100), XL(50),
    num('d', 'Khoảng cách d', 0.18, '', { units: [['lambda', 'λ'], ['m', 'm']], unitId: 'dUnit' }),
    sel('dir', 'Hướng đi', [['gen', 'Về phía nguồn (biết Z_L)'], ['load', 'Về phía tải (biết Z_in)']], 'gen', { wide: true }), FQ('', 'GHz', OPT), ER] },
  { name: 'Biến đổi λ/4', solve: solveQW, fields: [Z0(50), RL(100), XL(50),
    sel('pos', 'Chèn đoạn λ/4 tại', [['dmax', 'd_max (bụng sóng)'], ['dmin', 'd_min (nút sóng)']], 'dmax', { hint: 'Chỉ dùng khi tải phức.', wide: true }), FQ(1, 'GHz', OPT), ER] },
  { name: 'Mạch Γ / ┐', solve: solveLumped, fields: [Z0(50), RL(10), XL(-40), FQ(1e9, 'rad'),
    sel('topo', 'Kiểu mạch', [['1', 'Mạch Γ: X₁ nối tiếp sát tải'], ['2', 'Mạch ┐: X₂ song song sát tải']], '1', { wide: true })] },
  { name: 'Dây chêm đơn', solve: solveSingle, fields: [Z0(50), RL(25), XL(-50),
    sel('conn', 'Kiểu mắc', [['shunt', 'Song song'], ['series', 'Nối tiếp']]), sel('type', 'Dây chêm', STUB),
    num('Rs', 'R<sub>S</sub> dây chêm', '', 'Ω', { optional: true, placeholder: '= Z₀' }), ER, FQ(100, 'MHz', OPT)] },
  { name: 'Dây chêm đôi', solve: solveDouble, fields: [Z0(50), RL(100), XL(50),
    num('d0', 'd<sub>1</sub> · tải → dây chêm 1', 0, 'λ', { wide: true }), num('dsp', 'd<sub>2</sub> · giữa 2 dây chêm', 0.125, 'λ', { wide: true }),
    sel('type1', 'Dây chêm 1', STUB, 'open'), sel('type2', 'Dây chêm 2', STUB, 'short')] },
];

const $ = id => document.getElementById(id);
const plain = s => s.replace(/<[^>]+>/g, '');
const form = $('form'), stepsEl = $('steps');
const chart = new SmithChart($('smith'), $('readout'));
const reduce = matchMedia('(prefers-reduced-motion: reduce)');
const state = { mod: 0, res: null, err: null, sol: 0, pinned: null };
// Each tab keeps its own entries while switching.
const values = MODULES.map(m => Object.fromEntries(m.fields.flatMap(f =>
  [[f.id, f.value], ...(f.unitId ? [[f.unitId, f.unitValue ?? f.units[0][0]]] : [])])));

const options = (list, v) => list.map(([k, t]) => `<option value="${k}"${k === v ? ' selected' : ''}>${t}</option>`).join('');
function fieldHtml(f, v) {
  const id = `f-${f.id}`, wide = f.wide || f.units;
  const control = f.options
    ? `<select id="${id}" name="${f.id}">${options(f.options, v[f.id])}</select>`
    : `<div class="input"><input id="${id}" name="${f.id}" type="number" step="any" inputmode="decimal" value="${v[f.id]}"` +
      `${f.placeholder ? ` placeholder="${f.placeholder}"` : ''}${f.optional ? '' : ' required'}>` +
      (f.units ? `<select name="${f.unitId}" aria-label="Đơn vị ${plain(f.label)}">${options(f.units, v[f.unitId])}</select>`
        : f.unit ? `<span class="unit">${f.unit}</span>` : '') + '</div>';
  return `<div class="field${wide ? ' wide' : ''}"><label for="${id}">${f.label}</label>${control}${f.hint ? `<p class="hint">${f.hint}</p>` : ''}</div>`;
}

function buildTabs() {
  $('modules').innerHTML = MODULES.map((m, i) =>
    `<button type="button" role="tab" id="tab-${i}" aria-selected="${i === state.mod}" data-i="${i}">${m.name}</button>`).join('');
}
function buildForm() { $('fields').innerHTML = MODULES[state.mod].fields.map(f => fieldHtml(f, values[state.mod])).join(''); }

function read() {
  const p = {};
  for (const f of MODULES[state.mod].fields) {
    const raw = form.elements[f.id].value;
    if (f.options) p[f.id] = raw;
    else {
      p[f.id] = raw.trim() === '' ? NaN : Number(raw);
      if (!f.optional && !Number.isFinite(p[f.id])) throw new Error(`Chưa nhập giá trị hợp lệ cho “${plain(f.label)}”.`);
    }
    if (f.unitId) p[f.unitId] = form.elements[f.unitId].value;
  }
  return p;
}

function summary() {
  return MODULES[state.mod].fields.map(f => {
    const el = form.elements[f.id];
    if (f.options) return `${f.label}: ${el.selectedOptions[0].text}`;
    if (el.value.trim() === '') return '';
    const unit = f.units ? form.elements[f.unitId].selectedOptions[0].text : f.unit;
    return `${f.label} = ${el.value} ${unit}`.trim();
  }).filter(Boolean).join(' · ');
}

function solve({ animate = true, keepSol = false } = {}) {
  const prev = state.sol;
  try { state.res = MODULES[state.mod].solve(read()); state.err = null; }
  catch (e) { state.res = null; state.err = e.message; }
  state.sol = keepSol && state.res && prev < state.res.solutions.length ? prev : 0;
  state.pinned = null;
  render(animate);
}

function render(animate) {
  const r = state.res, sols = r?.solutions ?? [], s = sols[state.sol];
  $('error').hidden = !state.err;
  $('error').innerHTML = state.err ?? ''; // solver messages are static strings with <sub> markup, never user input
  $('sol-name').textContent = sols.length > 1 ? `Nghiệm ${state.sol + 1}${s.tag ? ` · ${s.tag}` : ''}` : '';
  $('problem').innerHTML = `<strong>${MODULES[state.mod].name}.</strong> ${summary()}`;
  $('solutions').innerHTML = sols.length > 1
    ? sols.map((x, i) => `<button type="button" role="tab" aria-selected="${i === state.sol}" data-i="${i}">Nghiệm ${i + 1}</button>`).join('')
    : `<span class="seg-title">${state.err ? 'Chưa có lời giải' : 'Giản đồ Smith'}</span>`;
  document.querySelector('.app').dataset.sol = state.sol;

  const answers = [...(s?.answers ?? []), ...(r?.answers ?? [])];
  $('answers').innerHTML = answers.map(a =>
    `<div class="ans${a.big ? ' big' : ''}${plain(a.v).length > 11 ? ' wide' : ''}"><dt>${a.k}</dt><dd>${a.v}${a.note ? `<small>${a.note}</small>` : ''}</dd></div>`).join('');

  const ops = [...(r?.draw ?? []), ...(s?.draw ?? [])];
  chart.draw(ops, animate && !reduce.matches);
  $('legend').innerHTML = ops.filter(o => o.t === 'point')
    .map(o => `<li data-label="${o.label}"><span class="badge k-${o.color}">${o.label}</span><span>${o.value}</span></li>`).join('');

  // Solvers join relations with \qquad; the narrow step column shows one relation per line instead.
  // and break before ⇒ so long chains wrap instead of clipping.
  const steps = [...(r?.steps ?? []), ...(s?.steps ?? []), ...(r?.after ?? [])];
  state.steps = steps; // read by chat.js as context
  const kc = Object.fromEntries(ops.filter(o => o.t === 'point').map(o => [o.label, o.color]));
  stepsEl.innerHTML = steps.length ? steps.map((st, i) => {
    const at = st.at ?? [], tex = st.tex.replace(/,?\\qquad\s*/g, '\\]\\[').replace(/\s*\\Rightarrow\s*/g, '\\]\\[\\Rightarrow ');
    return `<li tabindex="0" data-at="${at.join(' ')}"><div class="step-head"><span class="num">${i + 1}</span>` +
      `<h3>Bước ${i + 1} — ${st.title}</h3><span class="marks">${at.map(l => `<span class="badge k-${kc[l] ?? 'ink'}">${l}</span>`).join('')}</span></div>` +
      `${st.tex ? `<div class="tex">${tex}</div>` : ''}${st.why ? `<p class="why">${st.why}</p>` : ''}</li>`;
  }).join('') : `<li class="empty">${state.err ? 'Sửa đề bài bên trái để xem lời giải.' : ''}</li>`;
  typeset();
}

function typeset() {
  if (!window.MathJax?.typesetPromise) return; // MathJax typesets the page itself once it finishes loading
  MathJax.typesetClear([stepsEl]);
  stepsEl.classList.add('typesetting');
  MathJax.typesetPromise([stepsEl]).finally(() => stepsEl.classList.remove('typesetting'));
}

// Step ↔ point link: hovering or focusing a step lights its points; clicking pins it.
const stepAt = li => (li?.dataset.at ? li.dataset.at.split(' ') : null);
stepsEl.addEventListener('pointerover', e => { const li = e.target.closest('li[data-at]'); if (li) chart.highlight(stepAt(li)); });
stepsEl.addEventListener('pointerleave', () => chart.highlight(state.pinned));
stepsEl.addEventListener('focusin', e => chart.highlight(stepAt(e.target.closest('li[data-at]'))));
stepsEl.addEventListener('focusout', () => chart.highlight(state.pinned));
stepsEl.addEventListener('click', e => {
  const li = e.target.closest('li[data-at]');
  if (!li) return;
  const on = !li.classList.contains('pinned');
  for (const x of stepsEl.children) x.classList.remove('pinned');
  li.classList.toggle('pinned', on);
  state.pinned = on ? stepAt(li) : null;
  chart.highlight(state.pinned);
  // On a phone the chart sticks to the top; keep the tapped step visible just below it.
  if (on && matchMedia('(max-width: 899px)').matches) li.scrollIntoView({ block: 'nearest', behavior: 'smooth' });
});
stepsEl.addEventListener('keydown', e => {
  if ((e.key === 'Enter' || e.key === ' ') && e.target.matches('li[data-at]')) { e.preventDefault(); e.target.click(); }
});
// Reverse link: hovering a point (legend or chart) lights it and the steps that reach it.
const linkSteps = label => { for (const li of stepsEl.children) li.classList.toggle('linked', !!label && (li.dataset.at ?? '').split(' ').includes(label)); };
const pointHover = label => { chart.highlight(label ? [label] : state.pinned); linkSteps(label); };
$('legend').addEventListener('pointerover', e => { const li = e.target.closest('li'); if (li) pointHover(li.dataset.label); });
$('legend').addEventListener('pointerleave', () => pointHover(null));
chart.layer.addEventListener('pointerover', e => { const g = e.target.closest('.pt[data-label]'); if (g) pointHover(g.dataset.label); });
chart.layer.addEventListener('pointerout', e => { if (e.target.closest('.pt[data-label]')) pointHover(null); });

$('modules').addEventListener('click', e => {
  const b = e.target.closest('button[data-i]');
  if (!b || +b.dataset.i === state.mod) return;
  state.mod = +b.dataset.i;
  buildTabs();
  buildForm();
  solve();
});
$('modules').addEventListener('keydown', e => {
  if (e.key !== 'ArrowRight' && e.key !== 'ArrowLeft') return;
  const i = (state.mod + (e.key === 'ArrowRight' ? 1 : MODULES.length - 1)) % MODULES.length;
  $(`tab-${i}`).click();
  $(`tab-${i}`).focus();
});
$('solutions').addEventListener('click', e => {
  const b = e.target.closest('button[data-i]');
  if (!b) return;
  state.sol = +b.dataset.i;
  state.pinned = null;
  render(true);
});

let timer;
form.addEventListener('input', e => {
  values[state.mod][e.target.name] = e.target.value;
  if (e.target.tagName === 'SELECT') return; // selects solve on 'change', with animation
  clearTimeout(timer);
  timer = setTimeout(() => solve({ animate: false, keepSol: true }), 250);
});
form.addEventListener('change', e => { if (e.target.tagName === 'SELECT') solve({ keepSol: true }); });
form.addEventListener('submit', e => { e.preventDefault(); clearTimeout(timer); solve({ keepSol: true }); });
$('reset').addEventListener('click', () => chart.resetView());
$('zoom-in').addEventListener('click', () => chart.zoomCenter(1 / 1.6));
$('zoom-out').addEventListener('click', () => chart.zoomCenter(1.6));
$('print').addEventListener('click', () => window.print());

buildTabs();
buildForm();
solve();
