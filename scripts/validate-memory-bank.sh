#!/usr/bin/env bash
# Validate instructions cards under memory-bank/instructions
set -euo pipefail
BLUE='\033[0;34m'; GREEN='\033[0;32m'; RED='\033[0;31m'; NC='\033[0m'
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

echo -e "${BLUE}==> Validating instructions (*.instructions.md)${NC}"
shopt -s nullglob
files=(memory-bank/instructions/*.instructions.md)
shopt -u nullglob
if (( ${#files[@]} == 0 )); then echo -e "${RED}No instruction files found${NC}"; exit 1; fi
FAIL=0; PASS=0
for f in "${files[@]}"; do
  echo " - $f"
  bad=0
  # front-matter boundaries
  if ! awk 'NR == 1 && $0 != "---" { exit 1 } NR > 1 && /^---$/ && !description { exit 1 } /^description: / { description=1 } description && NR > 1 && /^---$/ { end=1; exit } END { exit !(description && end) }' "$f"; then
    echo "   ! front matter must start with ---, include a description, and end with ---"
    bad=1
  fi
  # forbid http links
  if grep -Eq 'https?://' "$f"; then echo "   ! external URLs found; prefer relative links"; bad=1; fi
  # ensure path marker comment is present
  base=$(basename "$f")
  if ! grep -q "<!-- memory-bank/instructions/${base} -->" "$f"; then echo "   ! missing path marker comment"; bad=1; fi
  if (( bad==0 )); then echo -e "   ${GREEN}OK${NC}"; PASS=$((PASS+1)); else FAIL=$((FAIL+1)); fi
done

echo -e "${BLUE}Summary:${NC} PASS=$PASS FAIL=$FAIL"
(( FAIL==0 )) || exit 1
