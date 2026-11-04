---
name: Smith Chart Solver
description: A step-by-step Smith-chart study tool for microwave-engineering homework, built to the category standard of a clean engineering web tool.
colors:
  accent-blue: "#2563eb"
  accent-blue-ink: "#1d4ed8"
  accent-blue-wash: "#edf3ff"
  solution-orange: "#e3550c"
  target-red: "#d92d20"
  danger-red: "#b42318"
  danger-wash: "#fef3f2"
  cool-ground: "#f5f6f8"
  card-white: "#ffffff"
  slate-ink: "#0f172a"
  slate-text: "#1e293b"
  slate-muted: "#5b6577"
  hairline: "#e3e7ed"
  hairline-strong: "#c9d0da"
  hover-wash: "#f3f5f8"
  grid-minor: "#cfd6df"
  grid-major: "#93a1b3"
  chart-rim: "#334155"
  chart-label: "#52627a"
  wtl-umber: "#a14a14"
typography:
  answer-figure:
    fontFamily: "Inter, system-ui, sans-serif"
    fontSize: "24px"
    fontWeight: 600
    lineHeight: 1.2
    letterSpacing: "-0.02em"
    fontFeature: "'cv11', 'tnum'"
  title:
    fontFamily: "Inter, system-ui, sans-serif"
    fontSize: "15px"
    fontWeight: 600
    letterSpacing: "-0.01em"
    fontFeature: "'cv11', 'tnum'"
  step-title:
    fontFamily: "Inter, system-ui, sans-serif"
    fontSize: "14.5px"
    fontWeight: 600
    lineHeight: 1.45
    fontFeature: "'cv11', 'tnum'"
  body:
    fontFamily: "Inter, system-ui, sans-serif"
    fontSize: "15px"
    fontWeight: 400
    lineHeight: 1.5
    fontFeature: "'cv11', 'tnum'"
  body-small:
    fontFamily: "Inter, system-ui, sans-serif"
    fontSize: "13.5px"
    fontWeight: 400
    lineHeight: 1.5
    fontFeature: "'cv11', 'tnum'"
  label:
    fontFamily: "Inter, system-ui, sans-serif"
    fontSize: "13px"
    fontWeight: 500
    fontFeature: "'cv11', 'tnum'"
  hint:
    fontFamily: "Inter, system-ui, sans-serif"
    fontSize: "12.5px"
    fontWeight: 400
    fontFeature: "'cv11', 'tnum'"
  chart-caption:
    fontFamily: "Inter, system-ui, sans-serif"
    fontSize: "8.5px"
    fontWeight: 600
    letterSpacing: "0.06em"
rounded:
  control-inner: "7px"
  control: "8px"
  card: "10px"
  pill: "99px"
spacing:
  xs: "4px"
  sm: "8px"
  md: "12px"
  lg: "16px"
  xl: "20px"
  2xl: "24px"
components:
  button-primary:
    backgroundColor: "{colors.accent-blue}"
    textColor: "{colors.card-white}"
    rounded: "{rounded.control}"
    height: "42px"
    width: "100%"
  button-primary-hover:
    backgroundColor: "{colors.accent-blue-ink}"
  icon-button:
    backgroundColor: "{colors.card-white}"
    textColor: "{colors.slate-muted}"
    rounded: "{rounded.control}"
    size: "34px"
  icon-button-hover:
    backgroundColor: "{colors.hover-wash}"
    textColor: "{colors.slate-ink}"
  card:
    backgroundColor: "{colors.card-white}"
    rounded: "{rounded.card}"
    padding: "20px"
  input:
    backgroundColor: "{colors.card-white}"
    textColor: "{colors.slate-text}"
    rounded: "{rounded.control}"
    height: "40px"
    padding: "0 12px"
  tab-underline:
    textColor: "{colors.slate-muted}"
    padding: "0 12px"
  tab-underline-selected:
    textColor: "{colors.slate-ink}"
  segmented-option:
    textColor: "{colors.slate-muted}"
    rounded: "{rounded.control-inner}"
    padding: "5px 14px"
  segmented-option-selected:
    backgroundColor: "{colors.card-white}"
    textColor: "{colors.slate-ink}"
  step-item:
    rounded: "{rounded.card}"
    padding: "12px"
  step-item-pinned:
    backgroundColor: "{colors.accent-blue-wash}"
  point-badge:
    backgroundColor: "{colors.card-white}"
    textColor: "{colors.slate-ink}"
    size: "22px"
  error-notice:
    backgroundColor: "{colors.danger-wash}"
    textColor: "{colors.danger-red}"
    rounded: "{rounded.control}"
    padding: "12px 14px"
---

# Design System: Smith Chart Solver

## Overview

**Creative North Star: "The Annotated Printed Chart"**

The system is the category standard played straight: white cards on a cool grey ground, slate ink, one blue accent, Inter with tabular figures, a 1px hairline border and a 10px radius. Nothing about the shell is themed. All the character is in the Smith chart itself, which reproduces the printed paper chart students use in class: three tiers of grid that fill in as you zoom, four labelled outer rings, and curved captions in capitals. The interface's job is to put the answer, the chart and the textbook steps side by side as equals and connect them.

Density is calm-technical. It aims at the craft of Desmos/GeoGebra (a chart that feels like a precise instrument), Smith V4.1/ADS (the notation and scales of the real chart) and Notion/Linear (quiet chrome, exact spacing, restrained states). Colour carries meaning, never decoration: blue is solution 1 and the primary action, orange is solution 2, red is the target, and dashed grey is construction. The lettered point badges A–E are the thread that ties the chart, the legend and the steps together, and they look the same in all three places and on paper.

The same page is also a printed A4 handout. Print is a first-class output, not an afterthought, so every rule has to hold up in black and white with no interaction.

**Key Characteristics:**
- Work area in three columns (inputs, the chart as hero, answers), with the detailed solution in a full-width section below it, as requested by the user on 2026-10-21. Answers stay above the fold on ~700px-tall laptops.
- A single blue accent, plus solution, target and construction colours that only appear in their roles.
- Inter throughout with tabular figures (`tnum`) and the `cv11` alternate.
- Hairline borders, a 10px card radius, one soft ambient shadow.
- A chart that copies the printed Smith chart, scaled so strokes and labels keep their screen size at any zoom.
- Step ↔ point linking through identical lettered badges.

## Colors

A cool neutral, slate-ink palette with one working blue and a small set of colours that carry meaning on the chart.

### Primary
- **Working Blue** (accent-blue): the primary action (Giải bài), the selected-tab underline, the focus ring, the caret, the pinned step number, and solution 1 on the chart (`--sol-1` matches `--accent`). Its pressed/hover state is **Deep Working Blue** (accent-blue-ink), which also colours the WTG scale and its caption. **Blue Wash** (accent-blue-wash) is the background of a pinned step.

### Secondary
- **Stub Orange** (solution-orange): solution 2. Setting `data-sol="1"` on the app swaps `--sol`, so the chart traces, solution badges, the solution tag and the selected segmented option all switch to orange together. Orange is never used for anything except the second solution.

### Tertiary
- **Target Red** (target-red): target circles on the chart (the g = 1 circle, the forbidden zone of the double stub with a 12% fill) and the points that land on them. **Danger Red** (danger-red) on **Danger Wash** (danger-wash) is reserved for solver error notices.

### Neutral
- **Cool Ground** (cool-ground): the page background behind the cards.
- **Card White** (card-white): cards, inputs, the background of badges, the selected segmented option.
- **Slate Ink** (slate-ink): headings, answer figures, values. **Slate Text** (slate-text): body copy. **Slate Muted** (slate-muted): labels, hints, units, unselected tabs, legend/answer terms.
- **Hairline** (hairline) and **Strong Hairline** (hairline-strong): card borders and dividers between answers or table rows; input borders and the border of a linked step.
- **Hover Wash** (hover-wash): hover on rows and buttons, the segmented track, the unit-select well, the step number at rest.
- **Chart greys**: minor grid (grid-minor), major grid at 0.2/0.5/1/2/5 (grid-major), outer rim (chart-rim), and grid/angle labels (chart-label). Construction circles (constant |Γ|, constant r) use a dashed slate grey.
- **WTL Umber** (wtl-umber): the WTL ring numbers and caption. It is kept apart from the WTG blue the way the printed chart separates the two scales.

### Named Rules
**The Colour-Is-Role Rule.** Each chromatic colour has exactly one meaning: blue means solution 1 or the primary action, orange means solution 2, red means a target or forbidden zone, and dashed grey means construction. Never use them as decoration.

**The One Swap Rule.** Solution colour comes only from `--sol`, which is switched by `.app[data-sol]`. A component that shows "the current solution" reads `var(--sol)` and never hard-codes blue or orange.

**The Follow-the-Device Rule.** Light or dark follows the device's `prefers-color-scheme` (requested by the user on 2026-10-21); there is no in-app toggle.
- **Tokens only.** Every colour is a `:root` token, including the chart greys (`--chart-ink`, `--chart-muted`, `--chart-label`, `--rim-label`, `--grid-fine`, `--ring`, `--tick`, `--wtl`) and the field, label, placeholder, top-bar, segmented, pinned and selection colours. The dark palette is a single override block, `@media screen and (prefers-color-scheme: dark)`.
- **Dark palette.** Blue-grey ground #0f141b and cards #171d26. Solution 1 is lightened to #6ea2ff, solution 2 to #ff9459, and the target to #f2675c so chart traces keep contrast. The primary button stays #2563eb so its white label keeps contrast.
- **Halos and badge fills** use `var(--card)`, so labels sit cleanly on either ground.
- **Print always uses the light palette** (the override is screen-only), because the A4 handout must read in black and white.

## Typography

**Display Font:** none (no display face; the largest type is the answer figure)
**Body Font:** Inter (with system-ui, sans-serif)

**Character:** Inter is the canon workhorse face, chosen with the category-standard direction. It is set with tabular figures and `cv11` so that columns of numbers line up and read like an instrument panel.

### Hierarchy
- **Answer figure** (600, 24px, 1.2, −0.02em): the main results (d, l, L, C, Γ, VSWR, Z(d)) at the top of the answer card. They don't wrap. In print they drop to 15pt and are allowed to wrap.
- **Title** (600, 15px, −0.01em): card titles (Đề bài, Đáp số, Lời giải từng bước). The brand name uses 700.
- **Step title** (600, 14.5px, 1.45, balanced wrapping): "Bước n — …" headings.
- **Body** (400, 15px, 1.5): the base text. Secondary answer rows, segmented options and units use 14px.
- **Body small** (400, 13.5px): the "why" explanations (max 68ch), the legend, the summary table.
- **Label** (500, 13px): field labels and big-answer terms.
- **Hint** (400–500, 12.5px): field hints, the step hint, the solution tag, the readout, table headers.
- **Chart text** (all multiplied by `--k`): grid labels 11px; WTG/WTL ring numbers 10px; angle numbers 8.5px; ring captions 8.5px/600/0.06em capitals; inner-rim captions 7.5px/500.

### Named Rules
**The Tabular Rule.** Every number is set in tabular figures. Subscripts (`<sub>` at 0.7–0.72em) follow the course notation: z<sub>L</sub>, d<sub>max</sub>, Γ<sub>L</sub>.

**The Course Notation Rule.** Steps read "Bước n — <title>", in Vietnamese, using the terms from the course slides (vòng S, quay 180° qua tâm, WTG/WTL, mạch Γ / mạch ┐). Equations are typeset in MathJax SVG and shrink to fit instead of clipping.

## Layout

The desktop grid (above 1279px) has three columns: inputs `clamp(280px, 22vw, 340px)`, chart `minmax(0, 1fr)` and output `clamp(320px, 26vw, 400px)`, with 20px gaps, 20px/24px/40px padding and a 1680px maximum width. The top bar is sticky (60px); the columns are not, because the steps section sits below them. The output column holds only the answer card. The chart is square and at most 760px wide. The step list ("Lời giải từng bước") spans the full width under the work area. Its steps are laid out as a grid of `repeat(auto-fill, minmax(min(100%, 460px), 1fr))` read row by row, with the summary table spanning the whole row.

Between 900 and 1279px the layout is two columns (a 320px input column beside the chart). The answer card drops underneath at full width, and the steps follow.

Below 900px everything is a single column: the top bar stacks the brand (52px) above the tabs (44px, horizontal scroll), cards use 16px padding, and the order is **inputs → answers → chart → steps**. The chart card sticks to the top while you walk the steps; it is capped at 40vh and the legend becomes a single scrolling row. Selected steps scroll to `calc(40vh + 110px)` so they stay clear of the sticky chart.

Spacing follows a 4px rhythm: 4/8/12/16/20/24, with 6px and 10px used inside small controls. Card internals are 20px; the gaps between fields are 12px.

### Print
A4 at 14mm margins, 11pt body. Page one is the problem statement (Đề bài, print only), then Đáp số in three columns, then the chart at a maximum of 170mm. The steps begin on page two. Tabs, form, tools, readout and segmented control are hidden. Cards lose their border, shadow and padding. Animation and dimming are cancelled, and `print-color-adjust: exact` preserves the meaning colours.

### Named Rules
**The Answer-Above-the-Fold Rule.** The answer card sits in the work area's right column, beside the chart. It never goes below the steps or under the inputs.

## Elevation & Depth

The system is mostly flat, using hairline borders and a tonal ground. Cards sit on the cool ground with a 1px hairline and one soft ambient shadow. The only other lift is the selected segmented option and the primary button's coloured contact shadow. The top bar uses a frosted backdrop instead of a shadow. On the chart, depth comes from emphasis rather than elevation: when a step is selected, everything that isn't part of it fades to 20% opacity.

### Shadow Vocabulary
- **Card ambient** (`0 1px 2px rgba(15,23,42,.05), 0 4px 16px -8px rgba(15,23,42,.08)`): every card.
- **Segment lift** (`0 1px 2px rgba(15,23,42,.12)`): the selected option in a segmented control.
- **Primary contact** (`0 1px 2px rgba(29,78,216,.3)`): the primary button.
- **Focus halo** (`0 0 0 3px rgba(37,99,235,.15)`): an input with focus inside it.

### Named Rules
**The Dim-Not-Lift Rule.** Selection on the chart is shown by thickening the selected item (trace 3px → 4.5px, badge filled solid) and dimming the rest to 20%. Never add shadows or glows to chart elements.

## Shapes

Corners are gently rounded: 10px for cards and step rows, 8px for inputs, buttons and the error notice, 7px for segmented options and the inner corner of a unit select, 6px for step-number chips and the focus outline, and fully round for tags and badges. Borders are always 1px hairlines; the only 1.5px stroke is a badge's ring. The circle is the system's motif: chart, brand mark, point badges and the reset-view icon. Icons are inline SVG strokes (1.75 width, round caps) on a 24px grid.

## Components

### Buttons
- **Primary (Giải bài):** solid Working Blue, white 600 text, full width, 42px tall, 8px radius, with the primary contact shadow. Hover deepens to accent-blue-ink; when pressed it moves down 1px.
- **Icon buttons (zoom −, zoom +, fit, print):** 34px squares with an 8px radius, a hairline border, a white fill and muted stroke icons. Hover turns the icon ink and the fill hover-wash. Each one has an aria-label and a title.
- **Focus:** a 2px Working Blue outline offset by 2px on every control.

### Tabs (problem types)
- **Style:** underline tabs filling the full height of the top bar, muted 500 text with 12px padding. Hover or select turns the text ink; the selected tab gets a 2px Working Blue underline with rounded ends, inset 12px and sitting on the bar's bottom border. On a phone they scroll horizontally with no scrollbar.

### Segmented control (Nghiệm 1 / Nghiệm 2)
- A hover-wash track with 3px padding. The selected option is white with the segment lift, and its text takes its solution colour (blue for 1, orange for 2). When there is only one solution it shows a plain title instead.

### Cards
- **Corner Style:** 10px. **Background:** white on cool ground. **Border:** 1px hairline. **Shadow:** card ambient. **Padding:** 20px (16px on a phone, 0 in print).
- **Card head:** title on the left, with a tag, tools or hint on the right; 16px below, minimum 32px tall.

### Inputs / Fields
- **Style:** 40px tall, 8px radius, strong hairline border, white. A unit sits inline as muted 14px text, or as a select joined on the right that is divided by a hairline and filled with hover-wash. Number spinners are removed.
- **Focus:** the border turns Working Blue with the 3px focus halo.
- **Layout:** a two-column field grid with 12px gaps; wide fields span both columns.

### Answer card
- The main answers are a two-column grid of answer figures (dt is a 13px muted label). Secondary results follow as full-width rows with a hairline above them, muted terms on the left and ink 500 values right-aligned. A pill tag in the top right names the active solution in `--sol` on a 10% wash of it.

### Point badges (signature)
- A 22px circle with a 1.5px ring and a 12px/700 letter, coloured by role (`--c`: ink, sol, target, muted). On the chart the badge sits 22 units outward from a 4.5px dot (inward for points on the rim) and fills solid when highlighted. The same badge appears in the legend, beside each step title, and in print.

### Step list (signature)
- Rows have 12px padding and a 10px radius. Each has a 22px number chip (6px radius, hover-wash, muted), a "Bước n — …" title, the point badges it touches, then the MathJax equation and the muted "why" text, indented 32px. Hovering highlights the row and its points on the chart. A pinned row has a blue wash, a blue-tinted border and a solid blue number. When you hover a chart point, the steps that use it are marked as "linked" with the strong hairline border.

### Smith chart (signature)
- **Grid:** the classic Z chart only. There are three level-of-detail tiers like the printed chart, finer towards the short-circuit end; tier 1 appears at 2× zoom and tier 2 at 5×. Majors are at 0.2, 0.5, 1, 2 and 5.
- **Outer rings:** four rings, from the inside out: transmission angle, reflection angle, WTL (umber) and WTG (deep blue). Each has curved capital captions, plus inner-rim captions for reactance and susceptance, all in Vietnamese.
- **Constant screen size:** `--k` = view width / full width scales every stroke, label and mark, so zooming in reveals more detail without making the ink thicker.
- **Drawing:** traces are 3px round-capped in `--sol` and draw in once per solve over 0.7s on `cubic-bezier(0.22,1,0.36,1)`. Reference circles fade in over 0.4s; target circles are red; construction circles are grey and dashed (6/5). Reduced motion turns the animation off.
- **Readout:** a muted 12.5px line under the chart showing the value at the pointer, its mirror through the centre, |Γ|∠ and WTG. It is hidden on a phone.

### Error notice
- A danger-wash panel with danger-red 14px text, an 8px radius and 12px/14px padding, with role="alert".

## Do's and Don'ts

### Do:
- **Do** take every solution-dependent colour from `var(--sol)` and switch solutions with `.app[data-sol]`.
- **Do** use identical letter badges A–E for a point on the chart, in the legend, in the steps and in print.
- **Do** scale every new chart stroke, label or mark by `--k` so it keeps its screen size when zoomed.
- **Do** mark targets in red and construction circles in grey dashes (6/5), the way the course slides do.
- **Do** write steps as "Bước n — …" with the "why" under the equation, following the slides' notation.
- **Do** keep the answer card beside the chart and the detailed steps in the full-width section below, and keep the phone order inputs → answers → sticky chart → steps.
- **Do** check every new element in print: A4, black and white, problem → answers → chart on page one, steps from page two.
- **Do** set every number in Inter with tabular figures.

### Don't:
- **Don't** add a ZY or admittance overlay grid. The chart is Z-only; admittance is read by rotating 180° through the centre.
- **Don't** use blue, orange or red for anything other than their roles (solution 1 or the primary action, solution 2, target).
- **Don't** add a second accent colour, gradients, or shadows on chart elements.
- **Don't** let the uppercase, letter-spaced chart captions spread into the interface chrome. They exist only because the printed Smith chart has them.
- **Don't** use the HCMUT name or logo.
