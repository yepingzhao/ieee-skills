# `_shared/` — Common content for ieee-* skills

This directory is **not a skill**. It has no `SKILL.md` and is not registered with the plugin loader. It exists so multiple skills can reference the same content without duplication.

Files here are referenced by sibling skills via relative paths in their `manifest.yaml`, for example:

```yaml
always_load:
  - ../_shared/core/reader-workflow.md
```

## Current contents

| File | Used by |
|---|---|
| `core/reader-workflow.md` | ieee-polishing, ieee-writing |
| `core/paper-type-taxonomy.md` | ieee-polishing, ieee-writing |
| `core/conference-taxonomy.md` | ieee-polishing, ieee-writing, ieee-reviewer |
| `core/ethics.md` | ieee-polishing, ieee-writing |
| `core/terminology-ledger.md` | ieee-polishing, ieee-writing, ieee-reader, ieee-paper2ppt |
| `journal-formats/ieee-tran.md` | ieee-polishing, ieee-writing |
| `journal-formats/ieee-conf.md` | ieee-polishing, ieee-writing |

## When to add a file here

Only when ≥ 2 skills need the same content. If only one skill needs it, keep it inside that skill's `static/`.

## When to keep content skill-local instead

The shared layer holds **definitions and reference material**. The **action layer** stays inside each skill's `static/fragments/`.
