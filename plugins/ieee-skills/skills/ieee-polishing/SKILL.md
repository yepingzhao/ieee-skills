---
name: ieee-polishing
description: >-
  Polish, restructure, or translate academic prose into IEEE-leaning technical English. Use whenever the user asks to polish a manuscript paragraph, abstract, introduction, methods, results, discussion, conclusion, title, or Chinese academic draft for IEEE journal/conference-quality English. Covers IEEEtran LaTeX layout fixes. Trigger on general technical/academic writing requests: "IEEE style", "technical writing polish", "conference paper polish", "transaction paper editing", "engineering writing", and Chinese phrasings like 学术写作、论文润色、SCI写作、英文论文润色、润色、改写、学术英语、英文写作、会议论文、期刊论文.
version: 1.0.0
author: Community contribution
---

# IEEE Technical Prose Polishing — Router

This skill is split into two layers:

- A **static layer** under `static/` that holds versioned, reusable content fragments (core principles, paper-type playbooks, per-section guidance, language-specific rules, per-journal style).
- A **dynamic layer** (this file plus `manifest.yaml`) that detects the request's axes and loads only the fragments needed for the current job.

Do not try to apply the polishing logic from memory or from this router. Always load fragments from disk as described below.

## Routing protocol

Follow these five steps every time the skill is invoked.

### 1. Load the manifest and the core layer

Read [manifest.yaml](manifest.yaml). It declares the axes (`paper_type`, `section`, `language`, `journal`), the allowed values, and the file paths each value maps to.

Also read every file listed under `always_load`. These hold the default stance, failure-mode diagnosis, ethics, and output format that apply to every polish job.

### 2. Detect the axis values for this request

For each axis in the manifest, decide the value using the manifest's `detect:` hint and the user's input:

- `paper_type` — transaction / conference / letter / review / magazine. Default: transaction.
- `section` — abstract / intro / method / results / discussion / conclusion / title. May be multiple. Ask if ambiguous.
- `language` — en or zh-to-en. Detect from the draft itself.
- `journal` — ieee-tran / ieee-conf / generic. Default: generic.

State the detected axis values in one short line to the user before proceeding.

### 3. Load the matching fragments

For each axis value, Read the file mapped in the manifest. Skip `section` only for free-floating prose with no section context.

Do **not** read every fragment in `static/`. Load only what step 2 selected.

### 4. Polish using the loaded material

Apply the loaded fragments in priority order:
1. Paper-type playbook (architecture, writing order).
2. Section-specific job and failure modes.
3. Journal-specific framing and constraints.
4. Language-specific sentence and paragraph rules (apply last).
5. Core stance and ethics throughout.

If a paragraph's structural problem cannot be fixed without inventing content, flag it instead of papering over it.

### 5. Reach for references only when needed

Files under `references/` are deep references. Open them on demand per the `references.on_demand` table in the manifest.

**Layout/typesetting (排版) requests**: If the user asks to fix placement — loose pages, stranded headings, figures splitting across pages, "Float too large" — skip the prose axes and load `references/latex-layout.md` directly.

## Why this split

- The static layer is versioned and reviewable. Adding a new journal style or paper type is one new file plus one manifest line.
- The dynamic layer keeps each invocation cheap: only relevant fragments enter context.
- The router itself is short on purpose. Update fragments, not this file.
