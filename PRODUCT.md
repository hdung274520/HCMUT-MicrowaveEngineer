# Product

<!-- impeccable:product-schema 1 -->

## Platform

web

## Users

Vietnamese university students in a Microwave Engineering (Kỹ thuật Siêu cao tần) course, working through homework on their own. They use it on both a phone and a PC.

## Product Purpose

Solve and visualize Smith-chart exercises step by step. Two jobs carry equal weight: checking an answer fast (enter the problem's numbers, read d, l, L, C) and learning the method (read the step-by-step solution and follow the path drawn on the chart).

## Positioning

Solutions follow the classic Z-only Smith chart method taught in the user's course: admittance is obtained by flipping the point through the centre and reading the chart as a Y chart. There is no combined ZY chart. Every step explains why it is done, not only the number.

## Operating Context

- Homework and exam revision, alone, on a phone or desktop.
- Results are printed on paper (solution steps plus the chart) for submission or revision.

## Capabilities and Constraints

- Five modules: transmission-line basics (z, y, Γ, VSWR, Zin at d), quarter-wave transformer, L-section lumped matching (two topologies), single-stub (shunt/series, short/open), double-stub (shunt, forbidden region).
- Interactive SVG Smith chart: constant-r circles and constant-x arcs, a WTG/WTL scale, a hover readout, zoom/pan, and animated solution paths.
- Step-by-step solution in LaTeX, rendered by MathJax from a CDN; it needs the network.
- Static HTML/CSS/vanilla JS with no build step; it opens index.html directly. Solver math is covered by `node test/rf.test.js`.
- UI language: Vietnamese.

## Brand Commitments

- The user chose the category standard (a clean engineering web tool) over a themed world. The quality bar is the craft of Desmos / GeoGebra, Smith V4.1 / ADS, and Notion / Linear, chosen by the user on 2026-10-21.
- Do not use the HCMUT name or logo.

## Evidence on Hand

Course slides: "Chapter 2 - Smith Chart and Impedance Matching" (HCMUT, Dept. of Telecoms Engineering, 2026), provided by the user in chat. They are the authority for method, notation and solution layout:

- Notation: Γ, z = r + jx, y = g + jb, WTG ("toward generator"), "vòng S" / constant-|Γ| circle, θ = 2βd in degrees ("Rotate 72°"), d_max / d_min, Z(d), Y(d) in S.
- Worked solutions are written as "Bước 1 — …, Bước 2 — …" and mark chart points with letters A, B, C, D, E, each with its value box (e.g. "A z_L = 0.2 − j0.8").
- Admittance: "quay 180° qua tâm" (z(d + λ/4) = y(d)). L-section uses the dashed "g = 1" circle on the left, then flips.
- L-section names: "mạch Γ" (series X₁ next to load, shunt X₂ toward source) and "mạch ┐" (shunt next to load, series toward source); intermediate points z_t, y_t; the shunt element is reported as b₂ → x₂ = −1/b₂ → L or C. Frequency is often given as ω (rad/s).
- Single stub: y_t = y_d + y_s = 1; the short stub starts at y = ∞ (right end); stub may have its own R_S ≠ R₀ (b_s = B_s·R_S); a lumped L/C may replace the stub at distance d.
- Quarter-wave transformer: also for complex loads, inserted at d_max or d_min.
- Double stub: λ/8 spacing, the two stubs may be of different types (l₁ open, l₂ short), "chọn nghiệm l₁ ngắn nhất".
- Physical lengths use ε_r or v_p (λ = c / (f√ε_r)); long lines reduce mod λ/2 (3.3λ ≡ 0.3λ); some problems go toward the load (given Z_in, find Z_L).
- Not yet in scope: generator voltage/power calculations, multi-branch circuits (Examples 7, 11, 12).

Known discrepancy: Exercise 1 on the slides gives Z(d) ≈ 26.5 − j37.9 Ω, but its own Γ(d) = −0.101 − j0.436 gives 28.5 − j31.1 Ω.

## Product Principles

1. The textbook method is the truth: what the chart shows must match how the course teaches it (classic Z chart, flip through the centre).
2. Answer and explanation are equals: a fast check must not bury the steps, and the steps must not bury the answer.
3. Works on paper: what the student prints must be legible and complete without the interactive layer.
4. Phone and desktop are both first-class.
