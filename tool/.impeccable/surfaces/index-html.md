---
version: 1
slug: "index-html"
primary_target: "index.html"
related_targets: []
---

# Surface brief: Smith Chart Solver (index.html)

Scope: the whole single-page app. Mode: Operate.
Audience: Vietnamese microwave-engineering students doing homework alone, on a phone or a PC. Job: check an answer fast, and learn the method step by step. Output: a printed solution handed in to the lecturer.
Constraints: static HTML/JS with no build step; solver math is covered by test/rf.test.js; classic Z-chart method (flip through the centre); course slides are the authority for notation.
Unresolved: generator voltage/power problems and multi-branch circuits are out of scope this round.

## Direction contract

THESIS: A Smith-chart study tool at the craft level of Desmos and Linear. The chart is the hero, and the answer and the steps sit beside it as equals, joined by the lettered points A–E. It refuses the calculator-form-plus-text-dump arrangement of the incumbent and of typical online Smith tools.

OWN-WORLD: Category standard, played straight. White cards on a cool neutral-50 ground, slate ink, one blue accent for primary actions and solution 1. Orange marks solution 2 and the stubs, and red marks target circles. Inter, a 1px neutral border, 10px radius, tabular figures. Points are lettered badges A–E, identical on the chart, in the steps and in the print.

STORY: The student picks a problem type, types the numbers, and reads d / l / L / C at once in large figures. Then they walk "Bước 1 — …"; selecting a step lights its point and path segment on the chart. Finally they print a clean A4 solution (problem, answers, chart, steps) that works in black and white.

FIRST VIEWPORT: A top bar holds the product name and underline tabs for the five problem types; it scrolls horizontally on a phone. The left column holds the "Đề bài" input card. The centre holds a large chart card with Nghiệm 1 / Nghiệm 2 tabs, zoom −/+/fit and print, and a legend of A–E values. The right column holds the answer card in big tabular figures (moved from under the inputs so answers stay above the fold on ~700px laptops). The step list sits in a full-width section below the work area, in columns read row by row (user request, 2026-10-21). On a phone the order is inputs → answers → chart (sticky while walking the steps) → steps.

FORM: canon (the user took the standing exit; not on the ordered list). Signature interaction: a step ↔ point link, where hovering or selecting a step highlights its letter and segment on the chart. Motion: the path draws in once per solve, and reduced motion skips it. seed:d086b73140f7c935

FINISH: unreviewed and undocumented is unfinished; this build ends with the finish review, the verdict, DESIGN.md, and every shipping raster carrying its provenance
