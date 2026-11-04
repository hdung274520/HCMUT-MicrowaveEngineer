// RF math + the five solvers, following the course slides (classic Z-only Smith chart): an admittance y
// is plotted with the same mapping as an impedance, Γ_y = (y−1)/(y+1) = −Γ_z, i.e. the point opposite z
// through the centre ("quay 180° qua tâm"), and the chart is then read as a Y chart.
//
// Each solver returns { answers, steps, draw, solutions: [{ answers, steps, draw }] }:
//   answers: [{ k, v, big?, note? }] as HTML; steps: [{ title, tex, why, at: [letters] }];
//   draw ops: circle {c, r, color, dash, fill} | path {pts, color, faint, to} | point {g, label, value, color}.
// Colours are role names the chart maps to CSS: ink, sol, target, muted, zone.
const C0 = 299792458;
const T = String.raw;
const mod = (a, m) => ((a % m) + m) % m;
const f4 = v => String(+v.toFixed(4));
const f3 = v => String(+v.toFixed(3));
const deg = r => (r * 180) / Math.PI;
const tex = z => `${f4(z.re)} ${z.im < 0 ? '-' : '+'} j${f4(Math.abs(z.im))}`;
const sample = f => Array.from({ length: 241 }, (_, i) => f(i / 240));
const ZERO = new Complex(0);
const J = v => new Complex(0, v);

const RF = {
  gamma: z => z.sub(1).div(z.add(1)),
  zOf: G => new Complex(1).add(G).div(new Complex(1).sub(G)),
  vswr: m => (m >= 1 ? Infinity : (1 + m) / (1 - m)),
  wtg: G => mod(0.25 - G.arg() / (4 * Math.PI), 0.5),
  // Move d wavelengths toward the generator: Γ(d) = Γ·e^{-j4πd} (clockwise on the chart).
  rotate: (G, d) => G.mul(Complex.polar(1, -4 * Math.PI * d)),
  move: (z, d) => RF.zOf(RF.rotate(RF.gamma(z), d)),
  // Stub length (λ) whose normalized input immittance is j·s: tan-form j·tan βl, otherwise −j·cot βl.
  stubLength: (s, tanForm) => mod(Math.atan(tanForm ? s : -1 / s) / (2 * Math.PI), 0.5),
  arcPath: (G, d) => sample(t => RF.rotate(G, d * t)),
  // Add j·dv to the plotted value w (series x in Z mode, shunt b in Y mode): moves along a constant r/g circle.
  imagPath: (w, dv) => sample(t => RF.gamma(w.add(J(dv * t)))),
};

// ---- shared helpers ---------------------------------------------------------------------------
const omega = p => (p.f > 0 ? (p.fUnit === 'rad' ? p.f : 2 * Math.PI * p.f * (p.fUnit === 'MHz' ? 1e6 : 1e9)) : null);
const lambdaOf = (p, w) => (2 * Math.PI * C0) / (w * Math.sqrt(p.er > 0 ? p.er : 1));
const len = (x, lam) => (lam ? (x * lam < 1 ? `${f3(x * lam * 1000)} mm` : `${f4(x * lam)} m`) : '');
const cx = z => z.toString(4);
const pt = (g, label, name, w) => ({ t: 'point', g, label, value: `${name} = ${cx(w)}`, color: 'ink' });
// Construction circles (grey dashed), drawn whole like on the slides: constant real part through a point
// (r = const in Z mode, g = const in Y mode), and the constant-|Γ| circle S a rotation travels on.
const reCircle = re => ({ t: 'circle', c: new Complex(re / (1 + re)), r: 1 / (1 + re), color: 'muted', dash: true });
const sCircle = G => ({ t: 'circle', c: ZERO, r: G.abs(), color: 'muted', dash: true });
const flipTo = (G, label, name, w, color = 'ink') => [
  { t: 'path', pts: [G, G.neg()], color, faint: true, to: label },
  { ...pt(G.neg(), label, name, w), color },
];

function load(p) {
  if (!(p.Z0 > 0)) throw new Error('Z₀ phải lớn hơn 0.');
  if (!(p.RL >= 0)) throw new Error('R<sub>L</sub> phải ≥ 0 (tải thụ động).');
  const ZL = new Complex(p.RL, p.XL ?? 0), zL = ZL.div(p.Z0), G = RF.gamma(zL);
  return { ZL, zL, yL: zL.inv(), G, m: G.abs() };
}

function matchable(L) {
  if (L.m < 1e-9) throw new Error('Tải đã phối hợp sẵn (z<sub>L</sub> = 1), không cần mạch phối hợp.');
  if (L.m > 1 - 1e-9) throw new Error('|Γ<sub>L</sub>| = 1 (tải thuần kháng): không thể phối hợp bằng mạch không tổn hao.');
}

function lamStep(p, w) {
  const lam = lambdaOf(p, w);
  return {
    lam,
    step: {
      title: 'Bước sóng trên đường truyền',
      tex: T`\[\lambda = \frac{c}{f\sqrt{\varepsilon_r}} = \frac{3\cdot 10^8}{${f4(w / (2 * Math.PI) / 1e6)}\cdot 10^6\cdot\sqrt{${p.er > 0 ? p.er : 1}}} = ${f4(lam)}\ \text{m}\]`,
      why: 'Dùng để đổi khoảng cách giữa đơn vị λ và mét. Nếu đề cho v<sub>p</sub> = k·c thì nhập ε<sub>r</sub> = 1/k².',
    },
  };
}

const stepNorm = (p, L, label = 'A') => ({
  title: 'Chuẩn hoá tải và chấm lên giản đồ',
  tex: T`\[z_L = \frac{Z_L}{Z_0} = \frac{${tex(L.ZL)}}{${p.Z0}} = ${tex(L.zL)}\]`,
  why: `Giản đồ Smith biểu diễn trở kháng chuẩn hoá theo Z₀. Giao của vòng r = ${f3(L.zL.re)} và cung x = ${f3(L.zL.im)} là điểm ${label}.`,
  at: [label],
});
const stepGamma = (L, label = 'A') => ({
  title: 'Hệ số phản xạ và vòng S',
  tex: T`\[\Gamma_L = \frac{z_L - 1}{z_L + 1} = ${tex(L.G)}\]\[|\Gamma_L| = ${f4(L.m)},\quad \angle\Gamma_L = ${f3(deg(L.G.arg()))}^\circ\]` +
    T`\[\text{VSWR} = \frac{1+|\Gamma_L|}{1-|\Gamma_L|} = ${L.m < 1 ? f3(RF.vswr(L.m)) : T`\infty`},\qquad \text{WTG}_{${label}} = ${f4(RF.wtg(L.G))}\lambda\]`,
  why: 'Trên đường truyền không tổn hao |Γ| không đổi, nên mọi điểm dọc đường truyền nằm trên vòng S (tâm O, bán kính |Γ<sub>L</sub>|, nét đứt).',
  at: [label],
});
const stepFlip = (G, w, from, to, nameFrom, nameTo) => ({
  title: 'Quay 180° qua tâm sang dẫn nạp',
  tex: T`\[${nameTo} = \frac{1}{${nameFrom}} = ${tex(w)},\qquad \text{WTG}_{${to}} = ${f4(RF.wtg(G))}\lambda\]`,
  why: `Vì z(d + λ/4) = y(d), điểm ${to} đối xứng với ${from} qua tâm. Từ đây đọc giản đồ như giản đồ Y: vòng r → vòng g, cung x → cung b.`,
  at: [to],
});
// Stub length as taught: tan(βl) from the needed susceptance (or reactance), βl in degrees, then l.
const stubTex = (s, tanForm, l, name = 'l', sn = 'b_s') =>
  (tanForm ? T`\tan(\beta ${name}) = ${sn} = ${f4(s)}` : T`\tan(\beta ${name}) = -\frac{1}{${sn}} = -\frac{1}{${f4(s)}} = ${f4(-1 / s)}`) +
  T` \Rightarrow \beta ${name} = ${f3(360 * l)}^\circ \Rightarrow ${name} = ${f4(l)}\lambda`;

// Lumped element for a normalized series reactance x (slides: x > 0 → L, x < 0 → C).
function lumped(x, Z0, w, n = '') {
  if (Math.abs(x) < 1e-9) return { tex: T`\text{không cần phần tử}`, html: 'không cần' };
  const X = x * Z0, i = n ? `_${n}` : '', h = n ? `<sub>${n}</sub>` : '';
  return X > 0
    ? { tex: T`L${i} = \frac{x${i} Z_0}{\omega} = ${f3((X / w) * 1e9)}\ \text{nH}`, html: `L${h} = ${f3((X / w) * 1e9)} nH` }
    : { tex: T`C${i} = \frac{-1}{\omega x${i} Z_0} = ${f3((-1 / (w * X)) * 1e12)}\ \text{pF}`, html: `C${h} = ${f3((-1 / (w * X)) * 1e12)} pF` };
}

// ---- Module 1: transmission line basics --------------------------------------------------------
function solveLine(p) {
  const L = load(p), w = omega(p), lam = w ? lambdaOf(p, w) : null, toLoad = p.dir === 'load';
  if (p.dUnit === 'm' && !lam) throw new Error('Nhập tần số để đổi d từ mét sang λ.');
  const dIn = p.dUnit === 'm' ? p.d / lam : p.d;
  if (!(dIn >= 0)) throw new Error('d phải ≥ 0.');
  const d = mod(dIn, 0.5), Gd = RF.rotate(L.G, toLoad ? -d : d), zd = RF.zOf(Gd), yd = zd.inv();
  const Zd = zd.mul(p.Z0), Yd = yd.div(p.Z0), matched = L.m < 1e-9;
  const dmax = mod(L.G.arg() / (4 * Math.PI), 0.5), dmin = mod(dmax + 0.25, 0.5);
  const [nA, nD] = toLoad ? ['z_{in}', 'z_L'] : ['z_L', 'z(d)'];
  const steps = [], draw = [
    { t: 'circle', c: ZERO, r: L.m, color: 'muted', dash: true },
    pt(L.G, 'A', toLoad ? 'z<sub>in</sub>' : 'z<sub>L</sub>', L.zL),
  ];
  if (w) steps.push(lamStep(p, w).step);
  steps.push({ ...stepNorm(p, L), title: toLoad ? 'Chuẩn hoá trở kháng đã biết' : 'Chuẩn hoá tải và chấm lên giản đồ' }, stepGamma(L));
  if (!toLoad && !matched) {
    steps.push({
      title: 'Vị trí bụng và nút sóng điện áp',
      tex: T`\[d_{max} = \frac{\angle\Gamma_L}{4\pi}\lambda = ${f4(dmax)}\lambda,\qquad d_{min} = d_{max} \pm \frac{\lambda}{4} = ${f4(dmin)}\lambda\]` +
        T`\[z(d_{max}) = \text{VSWR} = ${f3(RF.vswr(L.m))},\qquad z(d_{min}) = \frac{1}{\text{VSWR}} = ${f3(1 / RF.vswr(L.m))}\]`,
      why: 'Vòng S cắt trục thực tại hai điểm: B (Γ thực dương, bụng điện áp V<sub>max</sub>) và C (Γ thực âm, nút điện áp V<sub>min</sub>). Đọc khoảng cách trên thang WTG.',
      at: ['B', 'C'],
    });
    draw.push(pt(new Complex(L.m), 'B', 'P<sub>max</sub>: z', new Complex(RF.vswr(L.m))), pt(new Complex(-L.m), 'C', 'P<sub>min</sub>: z', new Complex(1 / RF.vswr(L.m))));
  }
  const [D, E] = toLoad || matched ? ['B', 'C'] : ['D', 'E'];
  steps.push({
    title: toLoad ? 'Đi về phía tải một đoạn d' : 'Đi về phía nguồn một đoạn d',
    tex: (dIn >= 0.5 ? T`\[d = ${f4(dIn)}\lambda \equiv ${f4(d)}\lambda\ \ (\text{trừ bội của } \lambda/2)\]` : '') +
      T`\[\theta = 2\beta d = 720^\circ \times ${f4(d)} = ${f3(720 * d)}^\circ,\qquad \text{WTG}_{${D}} = ${f4(RF.wtg(L.G))} ${toLoad ? '-' : '+'} ${f4(d)} \equiv ${f4(RF.wtg(Gd))}\lambda\]` +
      T`\[\Gamma(d) = \Gamma_L e^{${toLoad ? '+' : '-'}j2\beta d} = ${tex(Gd)},\qquad ${nD} = \frac{1+\Gamma}{1-\Gamma} = ${tex(zd)}\]` +
      T`\[${nD.replace('z', 'Z')} = ${nD}\cdot Z_0 = ${tex(Zd)}\ \Omega\]`,
    why: toLoad
      ? 'Đi từ điểm đã biết về phía tải: quay NGƯỢC chiều kim đồng hồ trên vòng S một góc 2βd.'
      : 'Đi từ tải về phía nguồn (toward generator): quay theo chiều kim đồng hồ trên vòng S một góc 2βd. Trở kháng lặp lại sau mỗi λ/2.',
    at: [D],
  }, {
    title: 'Dẫn nạp tại cùng vị trí',
    tex: T`\[y = \frac{1}{${nD}} = ${tex(yd)},\qquad Y = \frac{y}{Z_0} = ${f4(Yd.re)} ${Yd.im < 0 ? '-' : '+'} j${f4(Math.abs(Yd.im))}\ \text{S}\]`,
    why: `Quay 180° qua tâm từ ${D} được ${E}.`,
    at: [E],
  });
  draw.push({ t: 'path', pts: RF.arcPath(L.G, toLoad ? -d : d), color: 'sol', to: D }, { ...pt(Gd, D, toLoad ? 'z<sub>L</sub>' : 'z(d)', zd), color: 'sol' },
    ...flipTo(Gd, E, 'y', yd, 'sol'));
  const answers = [
    { k: 'Γ<sub>L</sub>', v: `${f4(L.m)} ∠ ${f3(deg(L.G.arg()))}°`, big: true },
    { k: 'VSWR', v: matched ? '1' : L.m < 1 ? f3(RF.vswr(L.m)) : '∞', big: true },
    { k: toLoad ? 'Z<sub>L</sub>' : 'Z(d)', v: `${cx(Zd)} Ω`, big: true },
    { k: toLoad ? 'Y<sub>L</sub>' : 'Y(d)', v: `${Yd.toString(5)} S` },
  ];
  if (!toLoad && !matched) answers.push({ k: 'd<sub>max</sub>', v: `${f4(dmax)}λ`, note: len(dmax, lam) }, { k: 'd<sub>min</sub>', v: `${f4(dmin)}λ`, note: len(dmin, lam) });
  if (lam) answers.push({ k: 'λ', v: `${f4(lam)} m` });
  return { zin: zd, Gd, dmax, dmin, answers, steps, draw, solutions: [] };
}

// ---- Module 2: quarter-wave transformer --------------------------------------------------------
function solveQW(p) {
  const L = load(p);
  matchable(L);
  const w = omega(p), lam = w ? lambdaOf(p, w) : null, real = Math.abs(p.XL ?? 0) < 1e-12;
  const dmax = mod(L.G.arg() / (4 * Math.PI), 0.5), atMin = real ? p.RL < p.Z0 : p.pos === 'dmin';
  const d = real ? 0 : atMin ? mod(dmax + 0.25, 0.5) : dmax;
  const GB = RF.rotate(L.G, d), Rd = p.Z0 * RF.zOf(GB).re, Z02 = Math.sqrt(p.Z0 * Rd), n = Z02 / p.Z0, zB = Rd / p.Z0;
  const end = real ? 'B' : 'C';
  const tr = sample(t => {
    const tn = Math.tan((Math.PI / 2) * t);
    return t === 1 ? ZERO : RF.gamma(new Complex(zB, n * tn).mul(n).div(new Complex(n, zB * tn)));
  });
  const steps = [stepNorm(p, L)], draw = [{ t: 'circle', c: ZERO, r: L.m, color: 'muted', dash: true }, pt(L.G, 'A', 'z<sub>L</sub>', L.zL)];
  if (!real) {
    steps.push(stepGamma(L), {
      title: atMin ? 'Đi về phía nguồn tới nút sóng d<sub>min</sub>' : 'Đi về phía nguồn tới bụng sóng d<sub>max</sub>',
      tex: T`\[d = ${f4(d)}\lambda,\qquad z(d) = ${atMin ? T`\frac{1}{\text{VSWR}}` : T`\text{VSWR}`} = ${f4(zB)}\ \Rightarrow\ R(d) = ${f4(Rd)}\ \Omega\]`,
      why: 'Biến đổi λ/4 chỉ phối hợp được tải thuần trở. Với tải phức, chèn đoạn λ/4 tại d<sub>max</sub> hoặc d<sub>min</sub>, nơi trở kháng nhìn vào là thực.',
      at: ['B'],
    });
    draw.push({ t: 'path', pts: RF.arcPath(L.G, d), color: 'sol', to: 'B' }, { ...pt(GB, 'B', 'z(d)', new Complex(zB)), color: 'sol' });
  }
  if (w) steps.push(lamStep(p, w).step);
  steps.push({
    title: 'Trở kháng đặc tính đoạn biến đổi',
    tex: T`\[Z_{02} = \sqrt{Z_0 \cdot ${real ? 'R_L' : 'R(d)'}} = \sqrt{${p.Z0}\cdot ${f4(Rd)}} = ${f4(Z02)}\ \Omega,\qquad l = \frac{\lambda}{4}${lam ? T` = ${f3(lam * 250)}\ \text{mm}` : ''}\]`,
    why: 'Chọn Z₀₂ là trung bình nhân để đoạn λ/4 biến điện trở đó thành đúng Z₀.',
  }, {
    title: T`Kiểm tra \(Z_{in} = Z_0\)`,
    tex: T`\[\beta l = \frac{\pi}{2} \Rightarrow Z_{in} = \frac{Z_{02}^2}{${real ? 'R_L' : 'R(d)'}} = \frac{${f4(Z02 * Z02)}}{${f4(Rd)}} = ${f4((Z02 * Z02) / Rd)}\ \Omega = Z_0\]`,
    why: `Trên giản đồ chuẩn hoá theo Z₀, đoạn dây Z₀₂ đưa điểm ${real ? 'A' : 'B'} theo một cung tròn về đúng tâm ${end}.`,
    at: [end],
  });
  draw.push({ t: 'path', pts: tr, color: 'sol', to: end }, { ...pt(ZERO, end, 'z<sub>in</sub>', new Complex(1)), color: 'sol' });
  const answers = [
    { k: 'Z<sub>02</sub>', v: `${f3(Z02)} Ω`, big: true },
    { k: 'l', v: lam ? `${f3(lam * 250)} mm` : 'λ/4', big: true, note: lam ? 'λ/4' : 'nhập f để có chiều dài vật lý' },
  ];
  if (!real) answers.push({ k: 'd', v: `${f4(d)}λ`, big: true, note: (atMin ? 'tại d<sub>min</sub>' : 'tại d<sub>max</sub>') + (lam ? ` · ${len(d, lam)}` : '') }, { k: 'R(d)', v: `${f3(Rd)} Ω` });
  return { Z02, answers, steps, draw, solutions: [] };
}

// ---- Module 3: L-section (mạch Γ / mạch ┐) -----------------------------------------------------
function solveLumped(p) {
  const L = load(p), w = omega(p);
  if (!w) throw new Error('Tần số phải lớn hơn 0.');
  matchable(L);
  const gamma = p.topo === '1'; // mạch Γ: series x₁ next to the load; mạch ┐: shunt b₂ next to the load
  // q = immittance seen by the element next to the load: z for a series element, y for a shunt one.
  const q = gamma ? L.zL : L.yL, a = q.re;
  if (a > 1 + 1e-12) throw new Error(gamma
    ? `Mạch Γ cần r<sub>L</sub> ≤ 1, nhưng r<sub>L</sub> = ${f4(a)} (z<sub>L</sub> nằm trong vòng r = 1). Hãy chọn mạch ┐.`
    : `Mạch ┐ cần g<sub>L</sub> ≤ 1, nhưng g<sub>L</sub> = ${f4(a)} (y<sub>L</sub> nằm trong vòng g = 1). Hãy chọn mạch Γ.`);
  const steps = [stepNorm(p, L)];
  const draw = [reCircle(a), { t: 'circle', c: new Complex(0.5), r: 0.5, color: 'target' }, { t: 'circle', c: new Complex(-0.5), r: 0.5, color: 'target', dash: true }, pt(L.G, 'A', 'z<sub>L</sub>', L.zL)];
  if (!gamma) {
    steps.push(stepFlip(L.G.neg(), L.yL, 'A', 'B', 'z_L', 'y_L'));
    draw.push(...flipTo(L.G, 'B', 'y<sub>L</sub>', L.yL));
  }
  const [P, Q, R] = gamma ? ['B', 'C', 'D'] : ['C', 'D', 'E'];
  const solutions = [1, -1].map(k => {
    const near = new Complex(a, k * Math.sqrt(a * (1 - a))), other = near.inv();
    const v1 = near.im - q.im, v2 = -other.im;
    // Slides name the series element x₁ and the shunt element b₂ (reported as x₂ = −1/b₂).
    const [x1, b2] = gamma ? [v1, v2] : [v2, v1], x2 = -1 / b2;
    const e1 = lumped(x1, p.Z0, w, 1), e2 = lumped(Math.abs(b2) < 1e-9 ? 0 : x2, p.Z0, w, 2);
    const Gn = RF.gamma(near);
    const sSteps = gamma ? [
      { title: 'Phần tử nối tiếp: đi dọc vòng r = r<sub>L</sub> tới vòng g = 1 lật', tex: T`\[z_t = z_L + jx_1,\ \ \text{Re}\{1/z_t\} = 1 \Rightarrow z_t = ${tex(near)},\qquad \Delta x = x_1 = ${f4(x1)}\]`, why: `Phần tử nối tiếp chỉ cộng điện kháng nên r không đổi: đi từ A dọc vòng r = r<sub>L</sub> (nét đứt xám). Giao của vòng này với vòng đỏ nét đứt (tâm −0.5, là vòng g = 1 nhìn trên giản đồ Z) là ${P}.`, at: [P] },
      { title: 'Quay 180° qua tâm sang dẫn nạp', tex: T`\[y_t = \frac{1}{z_t} = ${tex(other)}\]`, why: `Lật ${P} qua tâm được ${Q}, nằm đúng trên vòng r = 1 (đọc là g = 1).`, at: [Q] },
      { title: 'Phần tử song song: đi dọc vòng g = 1 về tâm', tex: T`\[\Delta b = b_2 = ${f4(b2)},\quad jx_2 = \frac{1}{jb_2} \Rightarrow x_2 = ${f4(x2)}\]\[${e1.tex},\qquad ${e2.tex}\]`, why: 'x > 0 → cuộn cảm L = xZ₀/ω; x < 0 → tụ C = −1/(ωxZ₀).', at: [R] },
    ] : [
      { title: 'Phần tử song song: đi dọc vòng g = g<sub>L</sub> tới vòng r = 1 lật', tex: T`\[y_t = y_L + jb_2,\ \ \text{Re}\{1/y_t\} = 1 \Rightarrow y_t = ${tex(near)},\qquad \Delta b = b_2 = ${f4(b2)}\]`, why: `Phần tử song song chỉ cộng điện nạp nên g không đổi: đi từ B dọc vòng g = g<sub>L</sub> (nét đứt xám). Giao của vòng này với vòng đỏ nét đứt (tâm −0.5, là vòng r = 1 nhìn trên giản đồ Y) là ${P}.`, at: [P] },
      { title: 'Quay 180° qua tâm về trở kháng', tex: T`\[z_t = \frac{1}{y_t} = ${tex(other)}\]`, why: `Lật ${P} qua tâm được ${Q}, nằm đúng trên vòng r = 1.`, at: [Q] },
      { title: 'Phần tử nối tiếp: đi dọc vòng r = 1 về tâm', tex: T`\[\Delta x = x_1 = ${f4(x1)},\qquad jx_2 = \frac{1}{jb_2} \Rightarrow x_2 = ${f4(x2)}\]\[${e1.tex},\qquad ${e2.tex}\]`, why: 'x > 0 → cuộn cảm L = xZ₀/ω; x < 0 → tụ C = −1/(ωxZ₀).', at: [R] },
    ];
    return {
      v1, v2, near, other,
      answers: [
        { k: 'X<sub>1</sub> nối tiếp', v: e1.html, big: true, note: `x<sub>1</sub> = ${f4(x1)}` },
        { k: 'X<sub>2</sub> song song', v: e2.html, big: true, note: `<span class="nw">b<sub>2</sub> = ${f4(b2)}</span> → <span class="nw">x<sub>2</sub> = ${f4(x2)}</span>` },
      ],
      steps: sSteps,
      draw: [
        { t: 'path', pts: RF.imagPath(q, v1), color: 'sol', to: P },
        { ...pt(Gn, P, gamma ? 'z<sub>t</sub>' : 'y<sub>t</sub>', near), color: 'sol' },
        ...flipTo(Gn, Q, gamma ? 'y<sub>t</sub>' : 'z<sub>t</sub>', other, 'sol'),
        { t: 'path', pts: RF.imagPath(other, v2), color: 'sol', to: R },
        { ...pt(ZERO, R, gamma ? 'y' : 'z', new Complex(1)), color: 'sol' },
      ],
    };
  }).sort((s, t) => Math.abs(s.v1) - Math.abs(t.v1));
  steps.push({
    title: gamma ? 'Mạch Γ: X₁ nối tiếp sát tải, X₂ song song phía nguồn' : 'Mạch ┐: X₂ song song sát tải, X₁ nối tiếp phía nguồn',
    tex: gamma
      ? T`\[y = 1 \leftarrow y = y_t + jb_2 \leftarrow y_t = \frac{1}{z_t} \leftarrow z_t = z_L + jx_1\]`
      : T`\[z = 1 \leftarrow z = z_t + jx_1 \leftarrow z_t = \frac{1}{y_t} \leftarrow y_t = y_L + jb_2\]`,
    why: `Điều kiện có nghiệm: ${gamma ? 'r<sub>L</sub>' : 'g<sub>L</sub>'} = ${f4(a)} ≤ 1. Hai nghiệm tương ứng hai giao điểm với vòng nét đứt.`,
  });
  return { sols: solutions, answers: [{ k: 'ω', v: `${(w / 1e9).toPrecision(4)}·10⁹ rad/s` }], steps, draw, solutions };
}

// ---- Module 4: single stub ----------------------------------------------------------------------
function solveSingle(p) {
  const L = load(p), shunt = p.conn === 'shunt', open = p.type === 'open', tanForm = shunt === open;
  matchable(L);
  const Rs = p.Rs > 0 ? p.Rs : p.Z0, w = omega(p), lam = w ? lambdaOf(p, w) : null;
  // Shunt stubs work on admittance: flip z_L through the centre and read the chart as a Y chart.
  const m = L.m, G0 = shunt ? L.G.neg() : L.G;
  const [V, Im, Re] = shunt ? ['y', 'b', 'g'] : ['z', 'x', 'r'];
  const [B0, C, D, E] = shunt ? ['B', 'C', 'D', 'E'] : ['A', 'B', 'C', 'D'];
  const start = new Complex(tanForm ? -1 : 1); // tan-form stubs start from zero immittance (left end)
  const steps = [stepNorm(p, L), stepGamma(L)], draw = [
    { t: 'circle', c: new Complex(0.5), r: 0.5, color: 'target' },
    { t: 'circle', c: ZERO, r: m, color: 'muted', dash: true },
    pt(L.G, 'A', 'z<sub>L</sub>', L.zL),
  ];
  if (w) steps.unshift(lamStep(p, w).step);
  if (shunt) {
    steps.push(stepFlip(G0, L.yL, 'A', 'B', 'z_L', 'y_L'));
    draw.push(...flipTo(L.G, 'B', 'y<sub>L</sub>', L.yL));
  }
  const solutions = [1, -1].map(k => {
    const Gt = new Complex(m * m, k * m * Math.sqrt(1 - m * m)); // on the r = 1 circle: Re Γ = |Γ|²
    const d = mod((G0.arg() - Gt.arg()) / (4 * Math.PI), 0.5);
    const Gd = RF.rotate(G0, d), v = RF.zOf(Gd), s = -v.im, sOwn = (s * Rs) / p.Z0, l = RF.stubLength(sOwn, tanForm);
    const Gs = RF.rotate(start, l);
    // Lumped replacement (slides Example 9): shunt → susceptance −b; series → reactance −x.
    const el = w ? lumped(shunt ? -1 / s : s, p.Z0, w) : null;
    return {
      d, Gd, v, s, l,
      answers: [
        { k: 'd · tải → dây chêm', v: `${f4(d)}λ`, big: true, note: len(d, lam) },
        { k: 'l · dây chêm', v: `${f4(l)}λ`, big: true, note: len(l, lam) },
        ...(el ? [{ k: 'Thay bằng L/C', v: el.html }] : []),
      ],
      steps: [
        {
          title: `Đi về phía nguồn trên vòng S tới vòng ${Re} = 1`,
          tex: T`\[\text{WTG}_{${C}} = ${f4(RF.wtg(Gd))}\lambda,\qquad d = \text{WTG}_{${C}} - \text{WTG}_{${B0}} = ${f4(d)}\lambda\]` +
            T`\[${V}_d = ${tex(v)}\ \ (\text{Re}\{${V}_d\} = 1)\]`,
          why: `Dây chêm ${shunt ? 'song song chỉ cộng điện nạp' : 'nối tiếp chỉ cộng điện kháng'}, nên trước hết phải dịch đoạn d để điểm rơi vào vòng ${Re} = 1 (vòng đỏ${shunt ? ', chính là vòng r = 1 khi đọc giản đồ như Y' : ''}).`,
          at: [C],
        },
        {
          title: `Dây chêm ${open ? 'hở mạch' : 'ngắn mạch'}: triệt tiêu phần ảo`,
          tex: T`\[${V}_s = -j\,\text{Im}\{${V}_d\} = ${s < 0 ? '-' : ''}j${f4(Math.abs(s))}` + (Rs !== p.Z0 ? T`\ \Rightarrow\ ${Im}_s(R_S) = ${f4(s)}\cdot\frac{${Rs}}{${p.Z0}} = ${f4(sOwn)}` : '') + T`\]` +
            T`\[${V}_{s} = ${tanForm ? T`j\tan\beta l` : T`-j\cot\beta l`} \Rightarrow ${stubTex(sOwn, tanForm, l, 'l', shunt ? 'b_s' : 'x_s')}\]` + (el ? T`\[\text{Hoặc thay dây chêm bằng: } ${el.tex}\]` : ''),
          why: `Trên giản đồ: xuất phát từ điểm ${V} = ${tanForm ? '0 (đầu trái)' : '∞ (đầu phải)'} quay theo vòng ngoài về phía nguồn một đoạn l tới ${D}.` + (Rs !== p.Z0 ? ' Dây chêm có trở kháng R<sub>S</sub> riêng nên chuẩn hoá lại theo R<sub>S</sub>.' : ''),
          at: [D],
        },
        {
          title: 'Kiểm tra phối hợp',
          tex: T`\[${V}_t = ${V}_d + ${V}_s = ${tex(v)} ${s < 0 ? '-' : '+'} j${f4(Math.abs(s))} = 1\]`,
          why: `Điểm ${C} đi dọc vòng ${Re} = 1 về tâm ${E}.`,
          at: [E],
        },
      ],
      draw: [
        { t: 'path', pts: RF.arcPath(G0, d), color: 'sol', to: C },
        { ...pt(Gd, C, `${V}<sub>d</sub>`, v), color: 'sol' },
        { t: 'path', pts: RF.arcPath(start, l), color: 'sol', faint: true, to: D },
        { ...pt(Gs, D, `${V}<sub>s</sub>`, J(sOwn)), color: 'sol' },
        { t: 'path', pts: RF.imagPath(v, s), color: 'sol', to: E },
        { ...pt(ZERO, E, `${V}<sub>t</sub>`, new Complex(1)), color: 'sol' },
      ],
    };
  }).sort((a, b) => a.d - b.d);
  return { sols: solutions, answers: [], steps, draw, solutions };
}

// ---- Module 5: double stub (shunt) --------------------------------------------------------------
function solveDouble(p) {
  const L = load(p), open1 = p.type1 === 'open', open2 = p.type2 === 'open';
  matchable(L);
  if (!(p.d0 >= 0)) throw new Error('d₀ phải ≥ 0.');
  const bd = 2 * Math.PI * p.dsp, s = Math.sin(bd), c = Math.cos(bd);
  if (!(p.dsp > 0) || Math.abs(s) < 1e-6) throw new Error('Khoảng cách giữa 2 dây chêm phải > 0 và không là bội số của λ/2.');
  // Everything happens on admittance: flip z_L to y_L, then rotate to stub 1.
  const Gy = L.G.neg(), G1 = RF.rotate(Gy, p.d0), y1 = RF.zOf(G1), g = y1.re, gmax = 1 / (s * s);
  const forbidden = g > gmax + 1e-12, has0 = p.d0 > 0;
  const Y1 = has0 ? 'C' : 'B', [P, Q, R] = has0 ? ['D', 'E', 'F'] : ['C', 'D', 'E'];
  const draw = [
    { t: 'circle', c: new Complex(gmax / (1 + gmax)), r: 1 / (1 + gmax), color: 'zone', fill: true },
    reCircle(g),
    ...(has0 ? [sCircle(L.G)] : []),
    { t: 'circle', c: new Complex(0.5), r: 0.5, color: 'target' },
    { t: 'circle', c: Complex.polar(0.5, 4 * Math.PI * p.dsp), r: 0.5, color: 'target', dash: true },
    pt(L.G, 'A', 'z<sub>L</sub>', L.zL),
    ...flipTo(L.G, 'B', 'y<sub>L</sub>', L.yL),
    ...(has0 ? [{ t: 'path', pts: RF.arcPath(Gy, p.d0), color: 'ink', to: 'C' }, pt(G1, 'C', 'y<sub>d1</sub>', y1)] : []),
  ];
  // Notation follows the course: y_t = y_d + y_s at each stub node (d = line before the stub, s = stub, t = total).
  const stubName = open => (open ? 'hở mạch: y = j tan βl' : 'ngắn mạch: y = −j cot βl');
  const intro = '<h3>Quy ước ký hiệu</h3><ul>' +
    '<li>y<sub>L</sub>: dẫn nạp tải chuẩn hoá.</li>' +
    '<li>y<sub>d1</sub>: dẫn nạp sau đoạn đường truyền d<sub>1</sub> (ngay trước dây chêm 1).</li>' +
    '<li>y<sub>s1</sub> = jb<sub>s1</sub>: dẫn nạp do dây chêm 1 đóng góp.</li>' +
    '<li>y<sub>t1</sub>: dẫn nạp tổng sau khi ghép song song dây chêm 1.</li>' +
    '<li>y<sub>d2</sub>: dẫn nạp sau đoạn d<sub>2</sub> từ y<sub>t1</sub> (ngay trước dây chêm 2); y<sub>s2</sub> = jb<sub>s2</sub> của dây chêm 2; y<sub>t2</sub> tổng, đạt phối hợp khi bằng 1 + j0.</li></ul>' +
    '\\[y_{t1} = y_{d1} + y_{s1},\\qquad y_{t2} = y_{d2} + y_{s2} = 1 + j0\\]';
  const steps = [{
    title: 'Chuẩn hoá tải và xác định y<sub>L</sub> trên giản đồ',
    tex: T`\[z_L = \frac{Z_L}{Z_0} = \frac{${tex(L.ZL)}}{${p.Z0}} = ${tex(L.zL)}\]` +
      T`\[y_L = \frac{1}{z_L} = \frac{${tex(L.zL.conj())}}{${f4(L.zL.abs() ** 2)}} = ${tex(L.yL)}\]` +
      T`\[\text{WTG}_{y_L} = ${f4(RF.wtg(Gy))}\lambda\]`,
    why: 'Dây chêm mắc song song nên làm việc trên miền dẫn nạp. Chấm z<sub>L</sub> (A), quay 180° qua tâm được y<sub>L</sub> (B); kẻ từ tâm qua B cắt vành WTG.' +
      (has0 ? '' : ' Dây chêm 1 đặt ngay tại tải nên y<sub>d1</sub> = y<sub>L</sub>.'),
    at: ['A', 'B'],
  }];
  if (has0) steps.push({
    title: 'Di chuyển từ y<sub>L</sub> tới vị trí dây chêm 1',
    tex: T`\[\text{WTG}_1 = \text{WTG}_{y_L} + d_1 = ${f4(RF.wtg(Gy))} + ${p.d0} \equiv ${f4(RF.wtg(G1))}\lambda\]` +
      T`\[y_{d1} = ${tex(y1)}\quad (g_1 = ${f4(g)},\ b_{d1} = ${f4(y1.im)})\]`,
    why: 'Vẽ vòng S qua y<sub>L</sub> (nét đứt xám, tâm O), quay theo chiều kim đồng hồ (về phía nguồn) một đoạn d<sub>1</sub> tới C, rồi đọc toạ độ tại đó.',
    at: ['C'],
  });
  const bps = [1, -1].map(k => (c + k * Math.sqrt(Math.max(0, g * (1 - g * s * s)))) / s);
  steps.push({
    title: 'Tìm y<sub>t1</sub> = y<sub>d1</sub> + y<sub>s1</sub> và điện nạp của dây chêm 1',
    tex: T`\[g_1 = ${f4(g)}\ ${forbidden ? '>' : T`\le`}\ g_{max} = \frac{1}{\sin^2\beta d_2} = \frac{1}{\sin^2(${f3(deg(bd))}^\circ)} = ${f4(gmax)}\]` +
      (forbidden ? '' : T`\[y_{t1} = y_{d1} + y_{s1} = g_1 + jb_{t1},\qquad b_{t1} = \frac{\cos\beta d_2 \pm\sqrt{g_1(1 - g_1\sin^2\beta d_2)}}{\sin\beta d_2}\]` +
        T`\[b_{t1} = ${f4(bps[0])}\ \text{hoặc}\ ${f4(bps[1])}\]` +
        T`\[y_{s1} = jb_{s1},\quad b_{s1} = b_{t1} - b_{d1} = ${f4(bps[0] - y1.im)}\ \text{hoặc}\ ${f4(bps[1] - y1.im)}\]`),
    why: `Dây chêm 1 mắc song song giữ nguyên g<sub>1</sub>, chỉ đổi phần ảo: điểm đi dọc vòng g = g<sub>1</sub> (nét đứt xám qua ${Y1}). Vẽ vòng g = 1 xoay NGƯỢC chiều kim đồng hồ (về phía tải) một đoạn d<sub>2</sub> (vòng đỏ nét đứt); hai vòng cắt nhau tại 2 điểm, cho 2 bộ nghiệm.` +
      (forbidden ? ' Ở đây g<sub>1</sub> > g<sub>max</sub>: điểm nằm trong vùng cấm (tô đỏ), hai vòng không cắt nhau.' : ''),
    at: [Y1],
  });
  if (forbidden) {
    steps.push({ title: 'Kết luận: không phối hợp được', tex: '', why: 'y<sub>d1</sub> nằm trong vùng cấm. Hãy tăng d<sub>1</sub> thêm khoảng λ/8 – λ/4 để đưa điểm ra khỏi vùng cấm, hoặc đổi khoảng cách d<sub>2</sub> giữa 2 dây chêm.', at: [Y1] });
    return { forbidden, sols: [], answers: [{ k: 'Kết luận', v: 'Nằm trong vùng cấm', big: true, note: 'không phối hợp được với d<sub>1</sub> này' }], steps, draw, solutions: [] };
  }
  const solutions = bps.map(bp => {
    const y1p = new Complex(g, bp), G1p = RF.gamma(y1p), G2 = RF.rotate(G1p, p.dsp), y2 = RF.zOf(G2);
    const b1 = bp - y1.im, b2 = -y2.im, l1 = RF.stubLength(b1, open1), l2 = RF.stubLength(b2, open2);
    return {
      bp, b1, b2, y1p, G1p, G2, y2, l1, l2,
      answers: [
        { k: 'l<sub>1</sub> · dây chêm 1', v: `${f4(l1)}λ`, big: true, note: `${open1 ? 'hở' : 'ngắn'} mạch · <span class="nw">b<sub>s1</sub> = ${f4(b1)}</span>` },
        { k: 'l<sub>2</sub> · dây chêm 2', v: `${f4(l2)}λ`, big: true, note: `${open2 ? 'hở' : 'ngắn'} mạch · <span class="nw">b<sub>s2</sub> = ${f4(b2)}</span>` },
      ],
      steps: [
        {
          title: 'Tính chiều dài dây chêm 1',
          tex: T`\[y_{t1} = ${tex(y1p)},\qquad y_{s1} = y_{t1} - y_{d1} = ${tex(new Complex(0, b1))}\]\[${stubTex(b1, open1, l1, 'l_1', 'b_{s1}')}\]`,
          why: `Nghiệm này dùng giao điểm ${P}. Dây chêm 1 ${stubName(open1)}.`,
          at: [P],
        },
        {
          title: 'Chuyển đến dây chêm 2 và tính l<sub>2</sub>',
          tex: T`\[y_{d2} = ${tex(y2)}\qquad (\text{trên vòng } g = 1)\]\[y_{s2} = 1 - y_{d2} = jb_{s2} \Rightarrow b_{s2} = ${f4(b2)}\]\[y_{t2} = y_{d2} + y_{s2} = 1 + j0\]\[${stubTex(b2, open2, l2, 'l_2', 'b_{s2}')}\]`,
          why: `Vẽ vòng S qua ${P} (nét đứt xám), quay theo chiều kim đồng hồ một đoạn d<sub>2</sub> (${f3(720 * p.dsp)}°) được ${Q}, nằm đúng trên vòng g = 1. Dây chêm 2 (${stubName(open2)}) triệt tiêu phần ảo, đưa về tâm ${R}: y<sub>t2</sub> = 1 + j0.`,
          at: [Q, R],
        },
      ],
      draw: [
        sCircle(G1p),
        { t: 'path', pts: RF.imagPath(y1, b1), color: 'sol', to: P },
        { ...pt(G1p, P, 'y<sub>t1</sub>', y1p), color: 'sol' },
        { t: 'path', pts: RF.arcPath(G1p, p.dsp), color: 'sol', to: Q },
        { ...pt(G2, Q, 'y<sub>d2</sub>', y2), color: 'sol' },
        { t: 'path', pts: RF.imagPath(y2, b2), color: 'sol', to: R },
        { ...pt(ZERO, R, 'y<sub>in</sub>', new Complex(1)), color: 'sol' },
      ],
    };
  }).sort((a, b) => a.l1 - b.l1);
  solutions[0].tag = 'l₁ ngắn nhất';
  const row = (k, f) => `<tr><th>${k}</th>${solutions.map(x => `<td>${f(x)}</td>`).join('')}</tr>`;
  const after = [{
    title: 'Bảng tổng hợp kết quả',
    tex: `<table class="summary"><thead><tr><th>Thông số</th><th>Nghiệm 1 (l<sub>1</sub> ngắn nhất)</th><th>Nghiệm 2</th></tr></thead><tbody>` +
      row('y<sub>d1</sub>', () => `\\(${tex(y1)}\\)`) + row('y<sub>s1</sub>', x => `\\(${tex(new Complex(0, x.b1))}\\)`) + row('y<sub>t1</sub>', x => `\\(${tex(x.y1p)}\\)`) +
      row('l<sub>1</sub>', x => `<strong>${f4(x.l1)}λ</strong>`) +
      row('y<sub>d2</sub>', x => `\\(${tex(x.y2)}\\)`) + row('y<sub>s2</sub>', x => `\\(${tex(new Complex(0, x.b2))}\\)`) + row('y<sub>t2</sub>', () => '\\(1 + j0\\)') +
      row('l<sub>2</sub>', x => `<strong>${f4(x.l2)}λ</strong>`) + '</tbody></table>',
    why: 'Thường chọn nghiệm có dây chêm ngắn hơn.',
  }];
  return { forbidden, sols: solutions, answers: [], intro, steps, after, draw, solutions };
}
