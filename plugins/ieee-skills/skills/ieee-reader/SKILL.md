---
name: ieee-reader
description: >-
  Full-paper bilingual Markdown reader with source anchors and figure grounding for IEEE journal and conference papers. Use whenever the user asks to translate an entire IEEE paper, generate a markdown reader, or create a bilingual reading version. Trigger on "IEEE reader", "paper reader", "read paper", "全文翻译", "论文阅读", "图文对应", and "原文对照".
version: 1.0.0
author: Community contribution
status: Draft
---

# IEEE Paper Reader — Router

## Routing protocol

### 1. Load the manifest and core
Read [manifest.yaml](manifest.yaml) and all `always_load` files.

### 2. Detect source format
- `pdf` — IEEE PDF (double-column aware extraction)
- `html` — IEEE Xplore HTML
- `text` — Plain text or LaTeX source

### 3. Load the matching fragment
Read only the fragment for the detected format.

### 4. Generate the reader
Produce a bilingual Markdown document with:
- Section-by-section translation
- Source anchor markers for every paragraph
- Figure grounding (caption + description + location)
- Key terminology side notes

### 5. Reach for references when needed
Open `references/extraction-strategy.md` and `references/annotation-guide.md` on demand.
