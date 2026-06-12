# Installation

`ieee-skills` is a repository of reusable instruction bundles centred on `SKILL.md`. Each `skills/ieee-*` directory is one installable unit. Copy the whole folder, not only `SKILL.md`, because many skills depend on `references/`, `static/`, assets, scripts, or README context. The `skills/_shared/` directory is shared support content and should stay next to the `ieee-*` folders.

## 1. Codex

### Plugin marketplace installation

```bash
codex plugin marketplace add https://github.com/user/ieee-skills --ref main
codex plugin add ieee-skills@ieee-skills
```

### Manual local-skill installation

```bash
git clone https://github.com/user/ieee-skills.git
cd ieee-skills
mkdir -p ~/.codex/skills
cp -R skills/_shared ~/.codex/skills/
for d in skills/ieee-*; do cp -R "$d" ~/.codex/skills/; done
```

## 2. Claude Code

### Plugin marketplace installation

```bash
claude plugin marketplace add user/ieee-skills
claude plugin install ieee-skills@ieee-skills
```

### Alternative: wrapper installation

```bash
mkdir -p ~/ai-skills && cd ~/ai-skills
git clone https://github.com/user/ieee-skills.git
mkdir -p ~/.claude/agents
cat > ~/.claude/agents/ieee-reader.md <<'EOF'
---
name: ieee-reader
description: Full-paper bilingual Markdown reader for IEEE papers.
---
When invoked, first read `~/ai-skills/ieee-skills/skills/ieee-reader/SKILL.md`.
Treat that file as the governing workflow.
EOF
```

## 3. Other agents

Copy the whole skill directory into your prompt library. Preserve `SKILL.md`, `manifest.yaml`, `static/`, `references/`, and any needed `skills/_shared/` files together.
