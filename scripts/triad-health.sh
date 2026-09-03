#!/usr/bin/env bash
# Run all triad validators and check VS Code settings for triad locations
set -euo pipefail
BLUE='\033[0;34m'; GREEN='\033[0;32m'; RED='\033[0;31m'; YELLOW='\033[1;33m'; NC='\033[0m'
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

ok=1

run() { echo -e "${BLUE}$ ${1}${NC}"; if bash -c "$1"; then echo -e "${GREEN}OK${NC}"; else echo -e "${RED}FAIL${NC}"; ok=0; fi; }

run "scripts/validate-memory-bank.sh"
run "scripts/validate-chatmodes.sh"
run "scripts/validate-prompts.sh"

# Check VS Code settings triad keys
if [[ -f .vscode/settings.json ]]; then
  if grep -q 'chat.promptFilesLocations' .vscode/settings.json && grep -q 'chat.instructionsFilesLocations' .vscode/settings.json && (grep -q 'chat.modeFilesLocations' .vscode/settings.json || grep -q 'chat.agentFilesLocations' .vscode/settings.json); then
    echo -e "${GREEN}VS Code triad settings present${NC}"
  else
    echo -e "${RED}VS Code triad settings missing keys${NC}"; ok=0
  fi
else
  echo -e "${YELLOW}.vscode/settings.json not found${NC}"; ok=0
fi

if (( ok==1 )); then echo -e "${GREEN}Triad Health: OK${NC}"; exit 0; else echo -e "${RED}Triad Health: FAIL${NC}"; exit 1; fi
