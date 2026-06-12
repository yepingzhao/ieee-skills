---
name: ieee-writing
description: >-
  Draft or rebuild IEEE manuscript sections from author-provided claims, results, figures, notes, or Chinese drafts. Covers abstracts, introductions, methods, results, discussions, conclusions, titles, and full outlines for IEEE Transactions, conference papers, letters, and review articles. Use whenever the user asks to draft paper sections, write a manuscript, structure an argument, or convert Chinese research notes into IEEE English prose. Trigger on "IEEE writing", "write abstract", "draft introduction", "manuscript section", "conference paper writing", "transaction paper", and Chinese phrasings like 写论文、写摘要、写引言、论文大纲、学术写作、会议论文撰写.
version: 1.0.0
author: Community contribution
---

# IEEE Manuscript Drafting — Router

This skill is split into two layers:

- A **static layer** under `static/` that holds versioned, reusable content fragments (core principles, paper-type drafting guides, section-specific drafting rules, language-specific guidance, per-journal style).
- A **dynamic layer** (this file plus `manifest.yaml`) that detects the request's axes and loads only the fragments needed for the current job.

Do not try to apply the drafting logic from memory or from this router. Always load fragments from disk as described below.

## Routing protocol

Follow these five steps every time the skill is invoked.

### 1. Load the manifest and the core layer

Read [manifest.yaml](manifest.yaml). It declares the axes (`paper_type`, `section`, `language`, `journal`), the allowed values, and the file paths.

Also read every file listed under `always_load`. These hold the default stance and writing contract.

### 2. Detect the axis values

For each axis in the manifest, decide the value using the manifest's `detect:` hint:

- `paper_type` — transaction / conference / letter / review. Default: transaction.
- `section` — abstract / intro / method / results-discussion / conclusion / title / related-work. Ask if ambiguous.
- `language` — en or zh-to-en. Detect from input.
- `journal` — ieee-tran / ieee-conf / generic. Default: generic.

State the detected values to the user before proceeding.

### 3. Load the matching fragments

Read only the files mapped to detected axis values. Do not load every fragment.

### 4. Draft using the loaded material

Apply fragments in priority order:
1. Paper-type guide (what this paper type needs)
2. Section-specific drafting rules (what this section does)
3. Journal-specific formatting constraints
4. Language-specific rules (apply last)
5. Core writing contract throughout (claim → evidence → citation)

**Critical**: Do not invent data, results, statistics, mechanisms, references, or novelty claims. If author input is insufficient, flag the gap — do not fill it.

### 5. Reach for references only when needed

Open `references/` files on demand per manifest's `references.on_demand` table.

## Why this split

- Static layer is versioned and reviewable. Adding paper types or sections is one new file + one manifest line.
- Dynamic layer keeps invocations cheap: only relevant fragments enter context.
- Router is intentionally short. Update fragments, not this file.
