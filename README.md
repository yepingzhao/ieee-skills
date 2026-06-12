# ieee-skills

A collection of Claude-compatible academic workflow bundles for producing work at IEEE journal and conference standards. Architecture mirrors [nature-skills](https://github.com/Yuan1z0825/nature-skills).

## Skill index

| Skill | Status | Purpose | Trigger keywords |
|-------|--------|---------|-----------------|
| [`ieee-figure`](skills/ieee-figure/README.md) | Draft | IEEE figure workflow (matplotlib/ggplot2/tikz) | "IEEE figure", "paper plot", "scientific figure" |
| [`ieee-polishing`](skills/ieee-polishing/README.md) | Draft | IEEE technical prose polishing | "IEEE style", "technical writing", "polish" |
| [`ieee-writing`](skills/ieee-writing/README.md) | Draft | IEEE manuscript section drafting | "IEEE writing", "write abstract", "manuscript draft" |
| [`ieee-reviewer`](skills/ieee-reviewer/README.md) | Draft | IEEE peer review assessment | "IEEE reviewer", "pre-submission review" |
| [`ieee-citation`](skills/ieee-citation/README.md) | Draft | IEEE [1] style citation retrieval & export | "IEEE citation", "BibTeX", "reference format" |
| [`ieee-data`](skills/ieee-data/README.md) | Draft | IEEE reproducibility & data availability | "data availability", "reproducibility" |
| [`ieee-reader`](skills/ieee-reader/README.md) | Draft | IEEE paper bilingual Markdown reader | "paper reader", "IEEE paper", "全文翻译" |
| [`ieee-response`](skills/ieee-response/README.md) | Draft | IEEE rebuttal/revision letters | "response to reviewers", "rebuttal" |
| [`ieee-paper2ppt`](skills/ieee-paper2ppt/README.md) | Draft | IEEE paper to Beamer/PPTX | "paper PPT", "journal club", "conference talk" |
| [`ieee-academic-search`](skills/ieee-academic-search/README.md) | Draft | IEEE Xplore + dblp + ACM DL search | "search papers", "IEEE Xplore", "find articles" |

## Shared design principles

1. **Primary sources only** — Rules grounded in IEEE author guidelines, published papers, and IEEEtran documentation.
2. **Explicit over implicit** — Every rule has a rationale.
3. **Section-aware** — Different logic for different paper sections.
4. **Output-first** — Every skill returns something immediately usable.
5. **Extensible by design** — Each skill is self-contained.

## Quick install (Claude Code plugin)

```bash
claude plugin marketplace add user/ieee-skills
claude plugin install ieee-skills@ieee-skills
```

See [install.md](install.md) for detailed instructions.

## Architecture

Each skill follows a **router + manifest** pattern:

```
skills/ieee-<topic>/
├── SKILL.md          # Router: frontmatter + 5-step routing protocol
├── manifest.yaml     # Declarative axes, always_load, on_demand references
├── README.md         # Human-readable reference
├── static/           # Versioned, reusable content fragments
│   ├── core/         # Always-loaded fragments
│   └── fragments/    # Per-axis conditional fragments
└── references/       # Deep on-demand references
```

Skills share common content in `skills/_shared/`.
