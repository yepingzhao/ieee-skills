#!/usr/bin/env bash
# Update Codex skills from this repository.
# Usage: bash scripts/update-codex-skills.sh
# Set CODEX_SKILLS_DIR to override the default ~/.codex/skills/.
set -euo pipefail

CODEX_SKILLS_DIR="${CODEX_SKILLS_DIR:-$HOME/.codex/skills}"
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
REPO_DIR="$(dirname "$SCRIPT_DIR")"

if [ "${PULL:-0}" = "1" ]; then
  echo "==> Pulling latest changes..."
  git -C "$REPO_DIR" pull --ff-only
fi

mkdir -p "$CODEX_SKILLS_DIR"

echo "==> Syncing shared support content..."
rsync -a --delete "$REPO_DIR/skills/_shared/" "$CODEX_SKILLS_DIR/_shared/"

echo "==> Syncing ieee-* skills..."
for d in "$REPO_DIR"/skills/ieee-*; do
  [ -d "$d" ] || continue
  skill_name="$(basename "$d")"
  rsync -a --delete "$d/" "$CODEX_SKILLS_DIR/$skill_name/"
  echo "    $skill_name"
done

echo "==> Done. Restart Codex to pick up new or updated skills."
