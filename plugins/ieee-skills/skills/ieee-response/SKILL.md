---
name: ieee-response
description: >-
  Draft, audit, and revise point-by-point reviewer response letters for IEEE journal and conference manuscript revisions. Every reviewer concern gets a stable ID, classification, action mapping, and evidence tie-in. Use when user has reviewer comments and needs to draft a rebuttal or revision response. Trigger on "response to reviewers", "rebuttal letter", "revision response", "审稿意见回复", and "修改回复".
version: 1.0.0
author: Community contribution
status: Draft
---

# IEEE Reviewer Response — Router

## Routing protocol

### 1. Load the manifest and core
Read [manifest.yaml](manifest.yaml) and all `always_load` files.

### 2. Intake and classify comments
Parse reviewer comments. Assign each an ID. Classify per `references/comment-taxonomy.md`.

### 3. Map actions
For each comment, determine the action: ACCEPT_TEXT, ADD_EXPERIMENT, CLARIFY, SOFTEN_CLAIM, AUTHOR_INPUT_NEEDED, etc.

### 4. Draft responses
Build point-by-point responses following `references/response-structure.md`.

### 5. QA
Run the checklist from `references/qa-checklist.md`.

## Guardrails
- Every comment gets an ID and response
- Claimed changes must cite section/figure/line
- Do not invent experiments or manuscript changes
- Flag items needing author input
