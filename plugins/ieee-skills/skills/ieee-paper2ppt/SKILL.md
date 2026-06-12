---
name: ieee-paper2ppt
description: >-
  Turn an IEEE scientific paper, preprint, or notes into a Beamer PDF or PPTX presentation for conference talks, journal clubs, or group meetings. Use when user asks to make slides from a paper, create a presentation, or convert a paper to Beamer/PPTX. Trigger on "paper PPT", "make slides", "journal club", "conference talk", "Beamer", "presentation from paper", and Chinese phrasings like 论文PPT、做slides、组会PPT、会议报告、论文展示.
version: 1.0.0
author: Community contribution
---

# IEEE Paper to Presentation — Router

## Routing protocol

### 1. Load the manifest and core
Read [manifest.yaml](manifest.yaml) and `always_load` files.

### 2. Detect backend: beamer or pptx
- `beamer` — LaTeX Beamer PDF output
- `pptx` — python-pptx PowerPoint output
Ask if not explicit. Default: pptx for group meetings, beamer for conference talks.

### 3. Load matching backend fragment
Read only the selected backend's fragment.

### 4. Build the presentation
Apply: contract → backend fragment. Use the paper's scientific argument as slide spine, not manuscript section order.

### 5. Reach for references when needed
Open on-demand per manifest.
