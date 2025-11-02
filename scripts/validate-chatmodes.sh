#!/usr/bin/env bash
# Validate chat modes under memory-bank/chatmodes
set -euo pipefail
BLUE='\033[0;34m'; GREEN='\033[0;32m'; RED='\033[0;31m'; NC='\033[0m'
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

echo -e "${BLUE}==> Validating chat modes (*.chatmode.md)${NC}"
shopt -s nullglob
files=(memory-bank/chatmodes/*.agent.md)
shopt -u nullglob
if (( ${#files[@]} == 0 )); then echo -e "${RED}No chatmode files found${NC}"; exit 1; fi
FAIL=0; PASS=0
for f in "${files[@]}"; do
  echo " - $f"
  bad=0
  # front-matter checks
  head -n 10 "$f" | grep -q '^---$' || { echo "   ! missing front-matter start"; bad=1; }
  awk '/^---$/{n++; next} n==1{print}' "$f" | grep -q '^description: ' || { echo "   ! missing description"; bad=1; }
  tools_line=$(awk '/^---$/{n++; next} n==1{print}' "$f" | grep "^tools: " || true)
  if [[ -z "$tools_line" ]]; then echo "   ! missing tools"; bad=1; else
    # Accept legacy or new names: codebase|search/codebase and editFiles|edit/editFiles, plus fetch
    grep -Eq "(codebase|search/codebase|\bsearch\b)" <<<"$tools_line" && \
    grep -Eq "(editFiles|edit/editFiles)" <<<"$tools_line" && \
    grep -Eq "fetch" <<<"$tools_line" || { echo "   ! tools must include codebase/search and editFiles/edit plus fetch"; bad=1; }
  fi
  awk '/^---$/{n++; next} n==1{print}' "$f" | grep -Eq "^model: GPT-5( \(Preview\))?$|^model: GPT-5 mini( \(Preview\))?$" || { echo "   ! model must be GPT-5 or GPT-5 mini (optionally with (Preview))"; bad=1; }
  # path marker
  base=$(basename "$f")
  grep -q "<!-- memory-bank/chatmodes/${base} -->" "$f" || { echo "   ! missing path marker comment"; bad=1; }
  # H1 count
  h1=$(grep -Ec '^# ' "$f" || true)
  (( h1>=1 )) || { echo "   ! missing H1"; bad=1; }
  # forbid external urls
  if grep -Eq 'https?://' "$f"; then echo "   ! external URLs found; prefer relative links"; bad=1; fi
  if (( bad==0 )); then echo -e "   ${GREEN}OK${NC}"; PASS=$((PASS+1)); else FAIL=$((FAIL+1)); fi
 done

echo -e "${BLUE}Summary:${NC} PASS=$PASS FAIL=$FAIL"
(( FAIL==0 )) || exit 1
