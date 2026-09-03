#!/usr/bin/env bash

# Layer 2 Development Environment Verification Script
# Read-only verification of Layer 2 artifacts with no side effects.
# This script checks VS Code workspace configuration, Copilot guardrails,
# memory-bank triad directories, and core memory files.

set -euo pipefail

# Color codes for output
readonly RED='\033[0;31m'
readonly GREEN='\033[0;32m'
readonly YELLOW='\033[1;33m'
readonly BLUE='\033[0;34m'
readonly NC='\033[0m' # No Color

# Get project root
PROJECT_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$PROJECT_ROOT"

# Print header
echo -e "${BLUE}╔════════════════════════════════════════════════════════════════╗${NC}"
echo -e "${BLUE}║${NC} Layer 2 — Development Environment Verification               ${BLUE}║${NC}"
echo -e "${BLUE}║${NC} Execution Time: $(date '+%Y-%m-%d %H:%M:%S %Z')                ${BLUE}║${NC}"
echo -e "${BLUE}╚════════════════════════════════════════════════════════════════╝${NC}"
echo

# Verification counters
PASS_COUNT=0
FAIL_COUNT=0
WARN_COUNT=0

# VS Code Settings artifacts
declare -a VSCODE_ARTIFACTS=(
    ".vscode/settings.json"
)

# Copilot artifacts
declare -a COPILOT_ARTIFACTS=(
    ".github/copilot-instructions.md"
)

# Memory-bank triad directories
declare -a TRIAD_DIRS=(
    "memory-bank/instructions"
    "memory-bank/prompts"
    "memory-bank/chatmodes"
)

# Memory-bank triad READMEs
declare -a TRIAD_READMES=(
    "memory-bank/instructions/README.md"
    "memory-bank/prompts/README.md"
    "memory-bank/chatmodes/README.md"
)

# Core memory files
declare -a MEMORY_FILES=(
    "memory-bank/activeContext.md"
    "memory-bank/projectbrief.md"
    "memory-bank/productContext.md"
    "memory-bank/systemPatterns.md"
    "memory-bank/techContext.md"
    "memory-bank/progress.md"
)

# Required triad keys in settings.json
declare -a TRIAD_KEYS=(
    "github.copilot.chat.codeGeneration.useInstructionFiles"
    "chat.instructionsFilesLocations"
    "chat.promptFiles"
    "chat.promptFilesLocations"
    "chat.modeFilesLocations"
)

echo -e "${YELLOW}━━━ VS Code Workspace Configuration ━━━${NC}"
echo

for file in "${VSCODE_ARTIFACTS[@]}"; do
    if [[ -f "$file" ]]; then
        echo -e "${GREEN}✓${NC} Present: $file"
        PASS_COUNT=$((PASS_COUNT + 1))

        # Check for triad keys
        missing_keys=()
        for key in "${TRIAD_KEYS[@]}"; do
            if ! grep -q "$key" "$file" 2>/dev/null; then
                missing_keys+=("$key")
            fi
        done

        if [[ ${#missing_keys[@]} -eq 0 ]]; then
            echo -e "  ${GREEN}└─ All triad keys present${NC}"
        else
            echo -e "  ${RED}└─ Missing keys: ${missing_keys[*]}${NC}"
            FAIL_COUNT=$((FAIL_COUNT + 1))
            PASS_COUNT=$((PASS_COUNT - 1))
        fi
    else
        echo -e "${RED}✗${NC} Missing: $file"
        FAIL_COUNT=$((FAIL_COUNT + 1))
    fi
done

echo
echo -e "${YELLOW}━━━ Copilot Guardrails ━━━${NC}"
echo

for file in "${COPILOT_ARTIFACTS[@]}"; do
    if [[ -f "$file" ]]; then
        echo -e "${GREEN}✓${NC} Present: $file"
        PASS_COUNT=$((PASS_COUNT + 1))

        # Check for key guardrail elements
        if grep -q "memory-bank" "$file" 2>/dev/null; then
            echo -e "  ${GREEN}└─ References memory-bank${NC}"
        else
            echo -e "  ${YELLOW}└─ Warning: No memory-bank reference${NC}"
            WARN_COUNT=$((WARN_COUNT + 1))
        fi
    else
        echo -e "${RED}✗${NC} Missing: $file"
        FAIL_COUNT=$((FAIL_COUNT + 1))
    fi
done

echo
echo -e "${YELLOW}━━━ Memory-Bank Triad Directories ━━━${NC}"
echo

for dir in "${TRIAD_DIRS[@]}"; do
    if [[ -d "$dir" ]]; then
        echo -e "${GREEN}✓${NC} Present: $dir/"
        PASS_COUNT=$((PASS_COUNT + 1))
    else
        echo -e "${RED}✗${NC} Missing: $dir/"
        FAIL_COUNT=$((FAIL_COUNT + 1))
    fi
done

echo
echo -e "${YELLOW}━━━ Triad Directory Documentation ━━━${NC}"
echo

for file in "${TRIAD_READMES[@]}"; do
    if [[ -f "$file" ]]; then
        echo -e "${GREEN}✓${NC} Present: $file"
        PASS_COUNT=$((PASS_COUNT + 1))
    else
        echo -e "${RED}✗${NC} Missing: $file"
        FAIL_COUNT=$((FAIL_COUNT + 1))
    fi
done

echo
echo -e "${YELLOW}━━━ Core Memory Files ━━━${NC}"
echo

for file in "${MEMORY_FILES[@]}"; do
    if [[ -f "$file" ]]; then
        echo -e "${GREEN}✓${NC} Present: $file"
        PASS_COUNT=$((PASS_COUNT + 1))

        # Check if file is writable
        if [[ -w "$file" ]]; then
            echo -e "  ${GREEN}└─ Writable${NC}"
        else
            echo -e "  ${YELLOW}└─ Warning: Not writable${NC}"
            WARN_COUNT=$((WARN_COUNT + 1))
        fi
    else
        echo -e "${RED}✗${NC} Missing: $file"
        FAIL_COUNT=$((FAIL_COUNT + 1))
    fi
done

echo

# Calculate total
TOTAL_COUNT=$((PASS_COUNT + FAIL_COUNT))

# Print summary
echo -e "${BLUE}╔════════════════════════════════════════════════════════════════╗${NC}"
echo -e "${BLUE}║${NC} Verification Summary                                          ${BLUE}║${NC}"
echo -e "${BLUE}╠════════════════════════════════════════════════════════════════╣${NC}"
printf "${BLUE}║${NC} %-30s %30s ${BLUE}║${NC}\n" "Total Artifacts:" "$TOTAL_COUNT"
printf "${BLUE}║${NC} ${GREEN}%-30s${NC} %30s ${BLUE}║${NC}\n" "Passed:" "$PASS_COUNT"
printf "${BLUE}║${NC} ${RED}%-30s${NC} %30s ${BLUE}║${NC}\n" "Failed:" "$FAIL_COUNT"
printf "${BLUE}║${NC} ${YELLOW}%-30s${NC} %30s ${BLUE}║${NC}\n" "Warnings:" "$WARN_COUNT"
echo -e "${BLUE}╠════════════════════════════════════════════════════════════════╣${NC}"

if [[ $FAIL_COUNT -eq 0 ]]; then
    if [[ $WARN_COUNT -eq 0 ]]; then
        echo -e "${BLUE}║${NC} Status: ${GREEN}PASS - Layer 2 fully verified${NC}                 ${BLUE}║${NC}"
        EXIT_CODE=0
    else
        echo -e "${BLUE}║${NC} Status: ${YELLOW}PASS with warnings - minor issues${NC}             ${BLUE}║${NC}"
        EXIT_CODE=0
    fi
else
    echo -e "${BLUE}║${NC} Status: ${RED}FAIL - Some artifacts missing or invalid${NC}        ${BLUE}║${NC}"
    EXIT_CODE=1
fi

echo -e "${BLUE}╚════════════════════════════════════════════════════════════════╝${NC}"
echo

# Exit with appropriate code
exit $EXIT_CODE
