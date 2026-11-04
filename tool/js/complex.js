// Minimal complex number type. Every operand may be a Complex or a plain number.
class Complex {
  constructor(re, im = 0) { this.re = re; this.im = im; }
  static of(v) { return v instanceof Complex ? v : new Complex(v, 0); }
  static polar(r, th) { return new Complex(r * Math.cos(th), r * Math.sin(th)); }
  add(b) { b = Complex.of(b); return new Complex(this.re + b.re, this.im + b.im); }
  sub(b) { b = Complex.of(b); return new Complex(this.re - b.re, this.im - b.im); }
  mul(b) { b = Complex.of(b); return new Complex(this.re * b.re - this.im * b.im, this.re * b.im + this.im * b.re); }
  div(b) {
    b = Complex.of(b);
    const d = b.re * b.re + b.im * b.im;
    return new Complex((this.re * b.re + this.im * b.im) / d, (this.im * b.re - this.re * b.im) / d);
  }
  inv() { return new Complex(1).div(this); }
  neg() { return new Complex(-this.re, -this.im); }
  conj() { return new Complex(this.re, -this.im); }
  abs() { return Math.hypot(this.re, this.im); }
  arg() { return Math.atan2(this.im, this.re); }
  toString(n = 4) {
    const f = v => String(+v.toFixed(n));
    return `${f(this.re)} ${this.im < 0 ? '−' : '+'} j${f(Math.abs(this.im))}`;
  }
}
