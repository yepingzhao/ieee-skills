# IEEEtran LaTeX Layout Fixes

## When to load this reference
User asks to fix placement/rendering issues in their IEEE LaTeX document — not when they ask for prose polishing.

## Common issues and fixes

### Float placement
- Figures/tables stuck at end: use `[t]` (top), `[b]` (bottom), `[p]` (float page), `[h]` (here), `[!]` (override constraints)
- Add `\usepackage{placeins}` and `\FloatBarrier` to force placement
- Consider `\usepackage{flushend}` for balanced final-page columns

### Overfull hbox
- Reword the offending sentence
- Enable draft mode to see bad boxes: `\documentclass[draft]{IEEEtran}`

### Widow/orphan lines
- `\looseness=-1` at paragraph end tightens by one line
- `\enlargethispage{\baselineskip}` extends current page
