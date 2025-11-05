#!/usr/bin/env bash

# Layer 3C Prompt Files Verification Script (read-only)
# Validates prompt cards for required front-matter, path marker, headings, and sections order.

set -euo pipefail

BLUE='\033[0;34m'; GREEN='\033[0;32m'; YELLOW='\033[1;33m'; RED='\033[0;31m'; NC='\033[0m'

PROJECT_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$PROJECT_ROOT"

PROMPTS_DIR="memory-bank/prompts"

echo -e "${BLUE}╔════════════════════════════════════════════════════════════════╗${NC}"
echo -e "${BLUE}║${NC} Layer 3C — Prompt Files Verification                         ${BLUE}║${NC}"
echo -e "${BLUE}║${NC} Execution Time: $(date '+%Y-%m-%d %H:%M:%S %Z')                ${BLUE}║${NC}"
echo -e "${BLUE}╚════════════════════════════════════════════════════════════════╝${NC}\n"

if [[ ! -d "$PROMPTS_DIR" ]]; then
  echo -e "${RED}✗${NC} Missing directory: $PROMPTS_DIR"
  exit 1
fi

shopt -s nullglob
prompt_files=("$PROMPTS_DIR"/*.prompt.md)
shopt -u nullglob

if [[ ${#prompt_files[@]} -eq 0 ]]; then
  echo -e "${RED}✗${NC} No .prompt.md files found in $PROMPTS_DIR"
  exit 1
fi

PASS=0
FAIL=0

for file in "${prompt_files[@]}"; do
  echo -e "${BLUE}→${NC} $file"
  file_fail=0

  # Front matter start and required description key
  if ! head -n 5 "$file" | grep -q '^---$'; then
    echo -e "  ${RED}└─ Missing front-matter start '---'${NC}"
    file_fail=1
  fi
  if ! awk '/^---$/{flag=!flag;next} flag{print}' "$file" | grep -q '^description: '; then
    echo -e "  ${RED}└─ Missing 'description' in front-matter${NC}"
    file_fail=1
  fi

  # Path marker comment must include correct directory and filename
  bn=$(basename "$file")
  if ! grep -q "<!-- memory-bank/prompts/${bn} -->" "$file"; then
    echo -e "  ${RED}└─ Missing or incorrect path marker comment${NC}"
    file_fail=1
  fi

  # Exactly one H1
  h1_count=$(grep -Ec '^# ' "$file" || true)
  if [[ "$h1_count" -lt 1 ]]; then
    echo -e "  ${RED}└─ Missing H1 title${NC}"
    file_fail=1
  fi

  # First H2 is Slash Command line
  first_h2=$(grep -n '^## ' "$file" | head -n1 | cut -d: -f2- || true)
  if [[ -z "${first_h2}" ]] || ! grep -q '^## Slash Command: /' <<<"$first_h2"; then
    echo -e "  ${RED}└─ First H2 must be '## Slash Command: /<stem> - <purpose>'${NC}"
    file_fail=1

  fi

  # Required sections in order after Slash Command
  required_sections=(
    '### Context & Activation'
    '### Goal'
    '### Output format'
    '### Inputs'
    '### Steps / Rules'
    '### Examples'
    '### Edge cases / Stop criteria'
  )

  last_index=0
  for section in "${required_sections[@]}"; do
    line_no=$(grep -n "^${section}$" "$file" | head -n1 | cut -d: -f1 || true)
    if [[ -z "$line_no" ]]; then
      echo -e "  ${RED}└─ Missing section: ${section}${NC}"
      file_fail=1
    else
      if (( line_no < last_index )); then
        echo -e "  ${RED}└─ Section out of order: ${section}${NC}"
        file_fail=1
      fi
      last_index=$line_no
    fi
  done

  if [[ "$file_fail" -eq 0 ]]; then
    echo -e "  ${GREEN}└─ OK${NC}"
    PASS=$((PASS+1))
  else
    FAIL=$((FAIL+1))
  fi

done

echo -e "\n${BLUE}Summary:${NC} PASS=$PASS, FAIL=$FAIL"
if [[ "$FAIL" -eq 0 ]]; then
  echo -e "${GREEN}All prompt files verified successfully.${NC}"
  exit 0
else
  echo -e "${RED}One or more prompts failed verification.${NC}"
  exit 1
fi
