#!/usr/bin/env bash
# Validate prompt cards under memory-bank/prompts per Layer 3C
set -euo pipefail
BLUE='\033[0;34m'; GREEN='\033[0;32m'; RED='\033[0;31m'; NC='\033[0m'
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

echo -e "${BLUE}==> Validating prompts (*.prompt.md)${NC}"
shopt -s nullglob
files=(memory-bank/prompts/*.prompt.md)
shopt -u nullglob
if (( ${#files[@]} == 0 )); then echo -e "${RED}No prompt files found${NC}"; exit 1; fi
FAIL=0; PASS=0
for f in "${files[@]}"; do
  echo " - $f"
  bad=0
  # front-matter and description
  head -n 5 "$f" | grep -q '^---$' || { echo "   ! missing front-matter start"; bad=1; }
  awk '/^---$/{n++; next} n==1{print}' "$f" | grep -q '^description: ' || { echo "   ! missing description"; bad=1; }
  # path marker
  base=$(basename "$f")
  grep -q "<!-- memory-bank/prompts/${base} -->" "$f" || { echo "   ! missing path marker comment"; bad=1; }
  # structure: path marker -> blank line -> H1
  # find line numbers
  pm_line=$(grep -n "<!-- memory-bank/prompts/${base} -->" "$f" | head -n1 | cut -d: -f1)
  h1_line=$(grep -n '^# ' "$f" | head -n1 | cut -d: -f1)
  if [[ -n "$pm_line" && -n "$h1_line" ]]; then
    between=$(( h1_line - pm_line - 1 ))
    if (( between != 1 )); then echo "   ! expected exactly one blank line between path marker and H1"; bad=1; fi
  fi
  # first H2 slash command
  first_h2=$(grep -n '^## ' "$f" | head -n1 | cut -d: -f2- || true)
  if [[ -z "$first_h2" ]] || ! grep -q '^## Slash Command: /' <<<"$first_h2"; then
    echo "   ! first H2 must be '## Slash Command: /<stem> - <purpose>'"; bad=1
  fi
  # required sections order
  last=0
  for s in '### Context & Activation' '### Goal' '### Output format' '### Inputs' '### Steps / Rules' '### Examples' '### Edge cases / Stop criteria'; do
    ln=$(grep -n "^${s}$" "$f" | head -n1 | cut -d: -f1 || true)
    if [[ -z "$ln" ]]; then echo "   ! missing section: $s"; bad=1; else
      (( ln >= last )) || { echo "   ! section out of order: $s"; bad=1; }
      last=$ln
    fi
  done
  # forbid external urls
  if grep -Eq 'https?://' "$f"; then echo "   ! external URLs found; prefer relative links"; bad=1; fi
  if (( bad==0 )); then echo -e "   ${GREEN}OK${NC}"; PASS=$((PASS+1)); else FAIL=$((FAIL+1)); fi
 done

echo -e "${BLUE}Summary:${NC} PASS=$PASS FAIL=$FAIL"
(( FAIL==0 )) || exit 1
