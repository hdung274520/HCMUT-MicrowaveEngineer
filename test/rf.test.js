// Run: node test/rf.test.js — checks every solver against independent formulas and the course slides.
const fs = require('fs'), vm = require('vm'), path = require('path'), assert = require('assert');
const src = ['complex.js', 'rf.js'].map(f => fs.readFileSync(path.join(__dirname, '../js', f), 'utf8')).join('\n');
const { Complex, RF, solveLine, solveQW, solveLumped, solveSingle, solveDouble } =
  vm.runInNewContext(src + '\n;({ Complex, RF, solveLine, solveQW, solveLumped, solveSingle, solveDouble })', {});

const near = (a, b, tol, msg) => assert.ok(Math.abs(a - b) < tol, `${msg}: ${a} vs ${b}`);
const one = (z, msg) => near(z.sub(1).abs(), 0, 1e-9, msg);
const j = v => new Complex(0, v);
const html = sol => sol.answers.map(a => a.v).join(' | ');

// Complex + chart conversions
near(new Complex(3, 4).abs(), 5, 1e-12, 'abs');
one(new Complex(3, 4).mul(new Complex(3, 4).inv()), 'z·(1/z)');
const z = new Complex(0.4, -0.8);
near(RF.zOf(RF.gamma(z)).sub(z).abs(), 0, 1e-12, 'Γ round trip');
near(RF.wtg(new Complex(-1)), 0, 1e-12, 'WTG short');
near(RF.wtg(new Complex(1)), 0.25, 1e-12, 'WTG open');

// Module 1: Γ rotation vs. the tan formula, and slide exercises
{
  const r = solveLine({ Z0: 50, RL: 100, XL: 50, d: 0.1, dUnit: 'lambda', dir: 'gen' }), zL = new Complex(2, 1), t = Math.tan(0.2 * Math.PI);
  near(r.zin.sub(zL.add(j(t)).div(new Complex(1).add(zL.mul(j(t))))).abs(), 0, 1e-9, 'zin');
  const e1 = solveLine({ Z0: 50, RL: 100, XL: 50, d: 0.18, dUnit: 'lambda', dir: 'gen' }); // slide Exercise 1
  near(e1.dmax, 0.037, 0.001, 'Ex1 dmax'); near(e1.dmin, 0.287, 0.001, 'Ex1 dmin');
  near(e1.Gd.re, -0.101, 0.001, 'Ex1 Γ(d) re'); near(e1.Gd.im, -0.436, 0.001, 'Ex1 Γ(d) im');
  const e2 = solveLine({ Z0: 50, RL: 25, XL: 100, d: 0.1, dUnit: 'lambda', dir: 'gen' }); // slide Exercise 2
  near(e2.dmax, 0.0707, 0.0005, 'Ex2 dmax'); near(e2.Gd.re, 0.769, 0.002, 'Ex2 Γ(d)');
  const e8 = solveLine({ Z0: 50, RL: 25, XL: 50, d: 3.3, dUnit: 'lambda', dir: 'gen' }); // slide Example 8
  near(e8.zin.re, 0.2756, 1e-4, 'Ex8 zin re'); near(e8.zin.im, -0.4055, 1e-4, 'Ex8 zin im');
  near(e8.dmax, 0.115, 0.001, 'Ex8 dmax'); near(e8.dmin, 0.365, 0.001, 'Ex8 dmin');
  const back = solveLine({ Z0: 50, RL: e8.zin.re * 50, XL: e8.zin.im * 50, d: 0.3, dUnit: 'lambda', dir: 'load' });
  near(back.zin.sub(new Complex(0.5, 1)).abs(), 0, 1e-9, 'toward load recovers z_L');
}

// Module 2: real load, and complex load at d_max / d_min gives Z_in = Z0
{
  near(solveQW({ Z0: 50, RL: 40, XL: 0 }).Z02, Math.sqrt(2000), 1e-9, 'Z02 real');
  for (const pos of ['dmax', 'dmin']) {
    const r = solveQW({ Z0: 50, RL: 100, XL: 50, pos }), zd = r.draw.find(o => o.label === 'B').value;
    const lastPath = r.draw.filter(o => o.t === 'path').pop().pts;
    near(lastPath[lastPath.length - 1].abs(), 0, 1e-9, `λ/4 path ends at centre (${pos})`);
    assert.ok(zd, 'B point');
  }
}

// Module 3: Pozar Ex. 5.1, and the slide examples (Z_L = 10 − j40, R0 = 50, ω = 1e9 rad/s)
{
  const r = solveLumped({ Z0: 100, RL: 200, XL: -100, f: 0.5, fUnit: 'GHz', topo: '2' }), yL = new Complex(2, -1).inv();
  near(r.sols[0].v1 / 100, 0.0029, 1e-4, 'Pozar B');
  for (const s of r.sols) one(yL.add(j(s.v1)).inv().add(j(s.v2)), 'mạch ┐ match');
  assert.throws(() => solveLumped({ Z0: 100, RL: 200, XL: -100, f: 0.5, fUnit: 'GHz', topo: '1' }));
  const g = solveLumped({ Z0: 50, RL: 10, XL: -40, f: 1e9, fUnit: 'rad', topo: '1' });
  assert.ok(/L<sub>1<\/sub> = 20 nH/.test(html(g.sols[0])) && /L<sub>2<\/sub> = 25 nH/.test(html(g.sols[0])), 'slide Γ sol 1: ' + html(g.sols[0]));
  assert.ok(/L<sub>1<\/sub> = 60 nH/.test(html(g.sols[1])) && /C<sub>2<\/sub> = 40 pF/.test(html(g.sols[1])), 'slide Γ sol 2: ' + html(g.sols[1]));
  const n = solveLumped({ Z0: 50, RL: 10, XL: -40, f: 1e9, fUnit: 'rad', topo: '2' });
  assert.ok(/L<sub>1<\/sub> = 77\.46 nH/.test(html(n.sols[0])), 'slide ┐ sol 1: ' + html(n.sols[0]));
  assert.ok(/C<sub>1<\/sub> = 12\.91 pF/.test(html(n.sols[1])), 'slide ┐ sol 2: ' + html(n.sols[1]));
  for (const s of g.sols) one(new Complex(0.2, -0.8).add(j(s.v1)).inv().add(j(s.v2)), 'mạch Γ match');
}

// Module 4: slide Examples 9, 10, 13 and the R_S example, then every type/connection by recomputation
{
  const e10 = solveSingle({ Z0: 50, RL: 25, XL: -50, conn: 'shunt', type: 'short', f: 100, fUnit: 'MHz' });
  near(e10.sols[0].d, 0.063, 0.001, 'Ex10 d1'); near(e10.sols[0].l, 0.090, 0.001, 'Ex10 l1');
  near(e10.sols[1].d, 0.207, 0.001, 'Ex10 d2'); near(e10.sols[1].l, 0.410, 0.001, 'Ex10 l2');
  assert.ok(/L = 50\.\d+ nH/.test(html(e10.sols[0])) && /C = 50\.\d+ pF/.test(html(e10.sols[1])), 'Ex9 lumped: ' + html(e10.sols[0]) + html(e10.sols[1]));
  const e13 = solveSingle({ Z0: 50, RL: 75, XL: -20, conn: 'shunt', type: 'short' });
  near(e13.sols[0].d, 0.104, 0.001, 'Ex13 d1'); near(e13.sols[0].l, 0.173, 0.001, 'Ex13 l1');
  near(e13.sols[1].d, 0.314, 0.001, 'Ex13 d2'); near(e13.sols[1].l, 0.327, 0.001, 'Ex13 l2');
  const ZL = new Complex(50).div(new Complex(2, 2 + Math.sqrt(3))), rs = solveSingle({ Z0: 50, RL: ZL.re, XL: ZL.im, conn: 'shunt', type: 'short', Rs: 100 });
  // The slide reads y_d ≈ 1 − j2.6 off the chart; exact is 1 − j(1 + √3), so d = 0.0833λ, l = 0.4712λ.
  const hit = rs.sols.find(s => Math.abs(s.d - 0.087) < 0.005);
  assert.ok(hit, 'R_S example d ≈ 0.302 − 0.215'); near(hit.v.im, -(1 + Math.sqrt(3)), 1e-9, 'R_S example y_d');
  near(hit.l, 0.469, 0.003, 'R_S example l');
  const zL = new Complex(1.2, -1.6);
  for (const conn of ['shunt', 'series']) for (const type of ['short', 'open']) {
    for (const s of solveSingle({ Z0: 50, RL: 60, XL: -80, conn, type }).sols) {
      const bl = 2 * Math.PI * s.l, tanForm = (conn === 'shunt') === (type === 'open');
      const stub = j(tanForm ? Math.tan(bl) : -1 / Math.tan(bl)), zd = RF.move(zL, s.d);
      one(conn === 'shunt' ? zd.inv().add(stub) : zd.add(stub), `single ${conn}/${type}`);
    }
  }
}

// Module 5: Pozar Ex. 5.4, mixed stub types (slide Bài 3), shortest l1 first, forbidden region
{
  const r = solveDouble({ Z0: 50, RL: 60, XL: -80, d0: 0, dsp: 0.125, type1: 'open', type2: 'open' });
  near(r.sols[0].b1, 1.314, 0.001, 'b1 sol 1'); near(r.sols[1].b1, -0.114, 0.001, 'b1 sol 2');
  const b = (type, l) => (type === 'open' ? Math.tan(2 * Math.PI * l) : -1 / Math.tan(2 * Math.PI * l));
  for (const [RL, XL] of [[60, -80], [100, 50], [100, -50]]) for (const [t1, t2] of [['open', 'short'], ['short', 'short']]) for (const d0 of [0, 0.07]) {
    const sols = solveDouble({ Z0: 50, RL, XL, d0, dsp: 0.125, type1: t1, type2: t2 }).sols;
    if (sols.length) assert.ok(sols[0].l1 <= sols[1].l1, 'shortest l1 first');
    for (const s of sols) {
      const y1 = RF.move(new Complex(RL, XL).div(50), d0).inv().add(j(b(t1, s.l1)));
      one(RF.move(y1.inv(), 0.125).inv().add(j(b(t2, s.l2))), `double ${RL}${XL} ${t1}/${t2} d0=${d0}`);
    }
  }
  assert.ok(solveDouble({ Z0: 50, RL: 10, XL: 0, d0: 0, dsp: 0.125, type1: 'short', type2: 'short' }).forbidden, 'forbidden');
  // Worked class example: Z_L = 40 − j60, d1 = 0.3λ, d2 = 0.2λ, both short → (l1, l2) = (0.323, 0.133) and (0.410, 0.409).
  const cls = solveDouble({ Z0: 50, RL: 40, XL: -60, d0: 0.3, dsp: 0.2, type1: 'short', type2: 'short' }).sols;
  near(cls[0].bp, -0.217, 0.001, 'class b1+ (2)'); near(cls[0].l1, 0.323, 0.001, 'class l1 (2)'); near(cls[0].l2, 0.133, 0.001, 'class l2 (2)');
  near(cls[1].bp, 0.867, 0.001, 'class b1+ (1)'); near(cls[1].l1, 0.410, 0.001, 'class l1 (1)'); near(cls[1].l2, 0.409, 0.001, 'class l2 (1)');
}

console.log('All tests passed');
