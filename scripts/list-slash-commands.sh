#!/usr/bin/env bash
# List all Slash Commands defined in prompt cards
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"
shopt -s nullglob
echo "Slash Commands:"
for f in memory-bank/prompts/*.prompt.md; do
  cmd=$(grep '^## Slash Command:' "$f" | sed -e 's/^## Slash Command: //')
  if [[ -n "$cmd" ]]; then echo " - $(basename "$f"): $cmd"; fi
done
