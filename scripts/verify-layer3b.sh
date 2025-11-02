#!/usr/bin/env bash

# Layer 3B Chat Modes Verification Script (read-only)
# Validates chatmode cards for required front-matter, keys, and structure.

set -euo pipefail

BLUE='\033[0;34m'; GREEN='\033[0;32m'; YELLOW='\033[1;33m'; RED='\033[0;31m'; NC='\033[0m'

PROJECT_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$PROJECT_ROOT"

echo -e "${BLUE}╔════════════════════════════════════════════════════════════════╗${NC}"
echo -e "${BLUE}║${NC} Layer 3B — Chat Modes Verification                          ${BLUE}║${NC}"
echo -e "${BLUE}║${NC} Execution Time: $(date '+%Y-%m-%d %H:%M:%S %Z')                ${BLUE}║${NC}"
echo -e "${BLUE}╚════════════════════════════════════════════════════════════════╝${NC}\n"

MODES_DIR="memory-bank/chatmodes"
FAIL=0
PASS=0

declare -a REQUIRED_KEYS=(
  "^---$"
  "^description: .+"
  "^tools: \['codebase', 'editFiles', 'fetch'\]$"
  "^model: GPT-5 \(Preview\)$|^model: GPT-5 mini \(Preview\)$"
  "^---$"
)

if [[ ! -d "$MODES_DIR" ]]; then
  echo -e "${RED}✗${NC} Missing directory: $MODES_DIR"
  exit 1
fi

shopt -s nullglob
mode_files=("$MODES_DIR"/*.chatmode.md)
shopt -u nullglob

if [[ ${#mode_files[@]} -eq 0 ]]; then
  echo -e "${RED}✗${NC} No .chatmode.md files found in $MODES_DIR"
  exit 1
fi

echo -e "${YELLOW}Scanning ${#mode_files[@]} chat mode file(s)...${NC}\n"

for file in "${mode_files[@]}"; do
  echo -e "${BLUE}→${NC} $file"
  file_fail=0

  # Extract front matter block
  fm=$(awk '/^---$/{flag=!flag;next} flag{print}' "$file" | sed -E 's/[[:space:]]+$//') || true

  # Validate required keys
  for re in "${REQUIRED_KEYS[@]}"; do
    if ! grep -Eq "$re" "$file"; then
      echo -e "  ${RED}└─ Missing or invalid front-matter line matching: ${re}${NC}"
      file_fail=1
    fi
  done

  # Path marker
  if ! grep -q "<!-- memory-bank/chatmodes/" "$file"; then
    echo -e "  ${RED}└─ Missing path marker comment${NC}"
    file_fail=1
  fi

  # Exactly one H1 (heuristic: count lines starting with '# ')
  h1_count=$(grep -Ec '^# ' "$file" || true)
  if [[ "$h1_count" -lt 1 ]]; then
    echo -e "  ${RED}└─ Missing H1 title${NC}"
    file_fail=1
  fi

  # At least one H2
  if ! grep -q '^## ' "$file"; then
    echo -e "  ${RED}└─ Missing H2 section${NC}"
    file_fail=1
  fi

  if [[ "$file_fail" -eq 0 ]]; then
    echo -e "  ${GREEN}└─ OK${NC}"
    PASS=$((PASS+1))
  else
    FAIL=$((FAIL+1))
  fi

done

echo -e "\n${BLUE}Summary:${NC} PASS=$PASS, FAIL=$FAIL"
if [[ "$FAIL" -eq 0 ]]; then
  echo -e "${GREEN}All chat modes verified successfully.${NC}"
  exit 0
else
  echo -e "${RED}One or more chat modes failed verification.${NC}"
  exit 1
fi
