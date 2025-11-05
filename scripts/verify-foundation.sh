#!/usr/bin/env bash

# Layer 1 Foundation Verification Script
# Read-only verification of Layer 1 artifacts with no side effects.
# This script checks presence and status without modifying anything.

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
echo -e "${BLUE}║${NC} Layer 1 — Foundation Verification                            ${BLUE}║${NC}"
echo -e "${BLUE}║${NC} Execution Time: $(date '+%Y-%m-%d %H:%M:%S %Z')                ${BLUE}║${NC}"
echo -e "${BLUE}╚════════════════════════════════════════════════════════════════╝${NC}"
echo

# Foundation files to verify
declare -a FOUNDATION_FILES=(
    ".editorconfig"
    ".gitattributes"
    ".gitignore"
    "LICENSE"
    "README.md"
    "VERSION"
    "scripts/README.md"
    "scripts/init.sh"
)

# Verification counters
PASS_COUNT=0
FAIL_COUNT=0
TOTAL_COUNT=${#FOUNDATION_FILES[@]}

echo -e "${YELLOW}Verifying ${TOTAL_COUNT} foundation artifacts...${NC}"
echo

# Verify each foundation file
for file in "${FOUNDATION_FILES[@]}"; do
    if [[ -f "$file" ]]; then
        echo -e "${GREEN}✓${NC} Present: $file"
        PASS_COUNT=$((PASS_COUNT + 1))

        # Check if it's a script and verify executability
        if [[ "$file" == *.sh ]]; then
            if [[ -x "$file" ]]; then
                echo -e "  ${GREEN}└─ Executable${NC}"
            else
                echo -e "  ${RED}└─ NOT executable${NC}"
                FAIL_COUNT=$((FAIL_COUNT + 1))
                PASS_COUNT=$((PASS_COUNT - 1))
            fi
        fi
    else
        echo -e "${RED}✗${NC} Missing:  $file"
        FAIL_COUNT=$((FAIL_COUNT + 1))
    fi
done

echo

# Check Git repository status
echo -e "${YELLOW}Checking Git repository...${NC}"
if [[ -d ".git" ]]; then
    echo -e "${GREEN}✓${NC} Git repository initialized"

    # Get additional git info
    CURRENT_BRANCH=$(git rev-parse --abbrev-ref HEAD 2>/dev/null || echo "unknown")
    COMMIT_COUNT=$(git rev-list --count HEAD 2>/dev/null || echo "0")

    echo -e "  ${BLUE}├─ Branch:${NC} $CURRENT_BRANCH"
    echo -e "  ${BLUE}└─ Commits:${NC} $COMMIT_COUNT"
else
    echo -e "${YELLOW}⚠${NC} Git repository not initialized"
fi

echo

# Check VERSION file content
if [[ -f "VERSION" ]]; then
    VERSION_CONTENT=$(cat VERSION | tr -d '[:space:]')
    echo -e "${YELLOW}Project version:${NC} $VERSION_CONTENT"
fi

echo

# Print summary
echo -e "${BLUE}╔════════════════════════════════════════════════════════════════╗${NC}"
echo -e "${BLUE}║${NC} Verification Summary                                          ${BLUE}║${NC}"
echo -e "${BLUE}╠════════════════════════════════════════════════════════════════╣${NC}"
printf "${BLUE}║${NC} %-30s %30s ${BLUE}║${NC}\n" "Total Artifacts:" "$TOTAL_COUNT"
printf "${BLUE}║${NC} ${GREEN}%-30s${NC} %30s ${BLUE}║${NC}\n" "Passed:" "$PASS_COUNT"
printf "${BLUE}║${NC} ${RED}%-30s${NC} %30s ${BLUE}║${NC}\n" "Failed:" "$FAIL_COUNT"
echo -e "${BLUE}╠════════════════════════════════════════════════════════════════╣${NC}"

if [[ $FAIL_COUNT -eq 0 ]]; then
    echo -e "${BLUE}║${NC} Status: ${GREEN}PASS - All foundation artifacts verified${NC}        ${BLUE}║${NC}"
    EXIT_CODE=0
else
    echo -e "${BLUE}║${NC} Status: ${RED}FAIL - Some artifacts missing or invalid${NC}        ${BLUE}║${NC}"
    EXIT_CODE=1
fi

echo -e "${BLUE}╚════════════════════════════════════════════════════════════════╝${NC}"
echo

# Exit with appropriate code
exit $EXIT_CODE
