---
name: ieee-citation
description: >-
  Convert manuscript text or standalone claims into IEEE [1]-style citation candidates with BibTeX export. Use whenever the user asks to find supporting references for a paper, format citations in IEEE style, generate BibTeX entries, or verify reference completeness. Trigger on "IEEE citation", "find references", "BibTeX", "numbered citation", "reference format", "[1] style", and Chinese phrasings like 引用格式、参考文献、找参考文献、BibTeX格式、引用检索.
version: 1.0.0
author: Community contribution
---

# IEEE Citation — Router

This skill retrieves and formats citations in IEEE [1] numbered style.

## Routing protocol

Follow these steps every time the skill is invoked.

### 1. Load the manifest and core layer

Read [manifest.yaml](manifest.yaml) and every file listed under `always_load`.

### 2. Identify the mode

- **Segment mode**: User provides text. Split into citable claim units.
- **Claim mode**: User provides discrete claims. Process each one.
- **Export mode**: User asks to export or format existing references.

### 3. Search and grade

For each citable claim:
1. Translate to English scientific concepts if input is Chinese
2. Search across IEEE Xplore, dblp, CrossRef, and Google Scholar
3. Grade support strength: strong / partial / background
4. Map to IEEE [1] number based on first-appearance order

### 4. Export

Output one or more formats:
- **Inline**: Numbered reference list in the response
- **BibTeX**: `.bib` file with IEEEtran-compatible entries
- **RIS**: `.ris` file for EndNote/Zotero import

### 5. Reach for references when needed

Open `references/` files on demand. Use `scripts/ieee_citation.py` for automated generation.

## Guardrails

- Do not fabricate DOI, pages, volume, issue, or journal metadata
- Flag citations where metadata is incomplete
- Prefer precision over volume: 1 verified citation > 5 guessed ones
