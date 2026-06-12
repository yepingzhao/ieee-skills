---
name: ieee-reviewer
description: >-
  Simulate IEEE-style peer review assessment from the referee perspective. Returns three reviewer reports plus a cross-review synthesis focusing on technical novelty, soundness, experimental rigor, presentation, and likely editorial decision. Use when user asks for pre-submission review, reviewer simulation, or peer-review critique for IEEE journals or conferences. Trigger on "IEEE reviewer", "pre-submission review", "reviewer report", "peer-review critique", "审稿人视角评估", and "模拟审稿".
version: 1.0.0
author: Community contribution
status: Draft
---

# IEEE Peer Review Assessment

This skill simulates IEEE peer review. It produces three reviewer reports plus a cross-review synthesis.

## Default stance

Assess as an external IEEE referee, not as an author. Be critical but constructive. IEEE reviewers value:
1. **Technical novelty** — Is this new, or incremental?
2. **Soundness** — Is the methodology correct?
3. **Experimental rigor** — Are the experiments convincing?
4. **Clarity** — Is the paper well-written and well-organized?
5. **Relevance** — Does this matter to the IEEE community?

## Accepted inputs
- Full manuscript (PDF, LaTeX, or text)
- Abstract + figures + key results
- Target venue (conference or journal, with name if known)

## Workflow

1. **Classify the paper** — Transaction, conference, letter, or review? See `references/source-basis.md`.
2. **Read the paper** — Identify the core claim, evidence chain, and contribution.
3. **Assess each axis** — Score novelty, soundness, rigor, clarity, relevance. See `references/review-axes.md`.
4. **Generate three reports** — Each from a different reviewer perspective. See `references/report-structure.md`.
5. **Synthesize** — Cross-review summary with decision recommendation.
6. **Apply QA checklist** — See `references/qa-checklist.md`.

## Output format
```
## Reviewer 1 (Specialist in [area])
### Summary
### Major Concerns
### Minor Issues
### Recommendation: [Accept / Minor Revision / Major Revision / Reject]

## Reviewer 2 ([perspective])
...

## Reviewer 3 ([perspective])
...

## Cross-Review Synthesis
### Consensus Strengths
### Consensus Weaknesses
### Decision Risk Assessment
### Recommended Action
```

## Guardrails
- Do not invent experiments, citations, or manuscript content
- Ground all comments in the provided material
- Distinguish between fixable problems and fatal flaws
- Flag when insufficient information prevents assessment

## Reference files
| File | Purpose |
|------|---------|
| `references/source-basis.md` | IEEE review standards and source material |
| `references/reviewer-workflow.md` | Detailed review process |
| `references/review-axes.md` | Scoring criteria per axis |
| `references/report-structure.md` | Report templates and structure |
| `references/role-boundaries.md` | What the agent should and should not do |
| `references/qa-checklist.md` | Pre-delivery quality checklist |
| `references/conference-review.md` | Conference-specific review criteria |
