---
name: ieee-figure
description: >-
  Submission-grade IEEE journal/conference figure workflow for Python, R, or LaTeX/tikz. Use whenever the user asks to create, revise, audit, or polish manuscript figures, multi-panel scientific plots, or journal-ready SVG/PDF/EPS outputs for IEEE or other engineering journals. Before plotting, define the figure's conclusion, evidence logic, and export needs. If the user has not chosen Python, R, or LaTeX, ask "Python, R, or LaTeX?" and stop. Supports matplotlib/seaborn, ggplot2, and tikz/pgfplots. Not for dashboards or Illustrator-first infographics. Also trigger on general academic figure needs: "IEEE figure", "paper plot", "scientific figure", 论文配图、科研绘图、画图、作图、论文图表.
version: 1.0.0
author: Community contribution
---

# IEEE Figure Making — Router

This skill is split into two layers:
- A **static layer** under `static/` holding versioned fragments (figure contract, default stance, per-backend quick-start).
- A **dynamic layer** (this file plus `manifest.yaml`) that detects the plotting backend and loads only the needed fragment.

Do not apply figure logic from memory. Always load fragments from disk.

## Routing protocol

### 1. Load the manifest and core layer
Read [manifest.yaml](manifest.yaml) and every file under `always_load`.

### 2. Resolve the backend — blocking gate
- `python` — matplotlib / seaborn
- `r` — ggplot2 / patchwork
- `latex` — tikz / pgfplots

If the user has not explicitly chosen, ask "Python, R, or LaTeX?" and stop. Do not default or guess.

### 3. Load the matching backend fragment
Read only the mapped fragment for the selected backend.

### 4. Build the figure
Apply in order: contract → stance → backend fragment. The chart serves the scientific logic; aesthetics are subordinate.

### 5. Reach for references only when needed
Open `references/` files on demand per manifest's `references.on_demand` table.

## Why this split
Keeps invocations cheap. Router is short on purpose. Update fragments, not this file.
