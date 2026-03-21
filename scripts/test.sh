#!/usr/bin/env bash
# scripts/test.sh — AHMYZSH Boot Validation Tests
# Runs a series of checks to verify the boot sequence works correctly.
#
# Usage:
#   bash scripts/test.sh         # Run all tests

set -euo pipefail

# --- Colors ---
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

PASS=0
FAIL=0
SKIP=0

pass() { echo -e "  ${GREEN}✓${NC} $*"; PASS=$((PASS + 1)); }
fail() { echo -e "  ${RED}✗${NC} $*"; FAIL=$((FAIL + 1)); }
skip() { echo -e "  ${YELLOW}○${NC} $*"; SKIP=$((SKIP + 1)); }

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
AHMYZSH_DIR="$(cd "${SCRIPT_DIR}/.." && pwd)"

echo ""
echo -e "${BLUE}╔══════════════════════════════════════════╗${NC}"
echo -e "${BLUE}║       AHMYZSH Test Suite v2.0.0          ║${NC}"
echo -e "${BLUE}╚══════════════════════════════════════════╝${NC}"
echo ""

# ═══════════════════════════════════════════════
# Test 1: File existence checks
# ═══════════════════════════════════════════════
echo -e "${BLUE}── File Existence ──${NC}"

for f in \
  source-me-in-etc-zshenv.sh \
  MAIN.sh \
  MAIN-FUNCTIONS.sh \
  MAIN_SETTINGS.sh \
  lib/detect.sh \
  lib/timer.sh \
  lib/path.sh \
  lib/locale.sh \
  lib/loader.sh \
  lib/runtimes.sh \
; do
  if [[ -f "${AHMYZSH_DIR}/${f}" ]]; then
    pass "${f} exists"
  else
    fail "${f} MISSING"
  fi
done

# ═══════════════════════════════════════════════
# Test 2: No hardcoded user paths
# ═══════════════════════════════════════════════
echo ""
echo -e "${BLUE}── No Hardcoded Paths ──${NC}"

BOOT_FILES=(
  source-me-in-etc-zshenv.sh
  MAIN.sh
  MAIN-FUNCTIONS.sh
  MAIN_SETTINGS.sh
  lib/detect.sh
  lib/timer.sh
  lib/path.sh
  lib/locale.sh
  lib/loader.sh
  lib/runtimes.sh
  core/paths/00000-init-paths.sh
)

for f in "${BOOT_FILES[@]}"; do
  filepath="${AHMYZSH_DIR}/${f}"
  if [[ -f "${filepath}" ]]; then
    if grep -qn '/home/luxcium' "${filepath}" 2>/dev/null; then
      fail "${f} contains hardcoded /home/luxcium"
    elif grep -qn '/Users/neb_401' "${filepath}" 2>/dev/null; then
      fail "${f} contains hardcoded /Users/neb_401"
    elif grep -qn '="/projects/ahmyzsh"' "${filepath}" 2>/dev/null; then
      fail "${f} contains hardcoded /projects/ahmyzsh"
    else
      pass "${f} has no hardcoded user paths"
    fi
  fi
done

# ═══════════════════════════════════════════════
# Test 3: No credentials in source files
# ═══════════════════════════════════════════════
echo ""
echo -e "${BLUE}── No Credentials ──${NC}"

for f in "${BOOT_FILES[@]}"; do
  filepath="${AHMYZSH_DIR}/${f}"
  if [[ -f "${filepath}" ]]; then
    # Check for GITHUB_TOKEN with actual value (not empty or variable reference)
    if grep -qn 'GITHUB_TOKEN="[^"$][^"]*"' "${filepath}" 2>/dev/null; then
      fail "${f} may contain GITHUB_TOKEN credential"
    elif grep -qn 'GITHUB_PASSWORD="[^"$][^"]*"' "${filepath}" 2>/dev/null; then
      fail "${f} may contain GITHUB_PASSWORD credential"
    else
      pass "${f} has no exposed credentials"
    fi
  fi
done

# ═══════════════════════════════════════════════
# Test 4: Guard variables prevent double-sourcing
# ═══════════════════════════════════════════════
echo ""
echo -e "${BLUE}── Guard Variables ──${NC}"

for f in lib/detect.sh lib/timer.sh lib/path.sh lib/locale.sh lib/loader.sh lib/runtimes.sh; do
  filepath="${AHMYZSH_DIR}/${f}"
  if [[ -f "${filepath}" ]]; then
    if grep -q '_AHMYZSH_.*_LOADED' "${filepath}" 2>/dev/null; then
      pass "${f} has guard variable"
    else
      fail "${f} missing guard variable"
    fi
  fi
done

# Check path.sh in compute-path too
filepath="${AHMYZSH_DIR}/core/compute-path/path.sh"
if [[ -f "${filepath}" ]] && grep -q '_AHMYZSH_.*_LOADED' "${filepath}" 2>/dev/null; then
  pass "core/compute-path/path.sh has guard variable"
else
  fail "core/compute-path/path.sh missing guard variable"
fi

# ═══════════════════════════════════════════════
# Test 5: Zsh syntax check
# ═══════════════════════════════════════════════
echo ""
echo -e "${BLUE}── Zsh Syntax Check ──${NC}"

if command -v zsh >/dev/null 2>&1; then
  for f in "${BOOT_FILES[@]}"; do
    filepath="${AHMYZSH_DIR}/${f}"
    if [[ -f "${filepath}" ]]; then
      if zsh -n "${filepath}" 2>/dev/null; then
        pass "${f} syntax OK"
      else
        fail "${f} syntax ERROR"
      fi
    fi
  done
else
  skip "zsh not available — skipping syntax checks"
fi

# ═══════════════════════════════════════════════
# Test 6: No eval in call_() function (security fix)
# ═══════════════════════════════════════════════
echo ""
echo -e "${BLUE}── Security: No eval in call_() ──${NC}"

for f in lib/loader.sh MAIN-FUNCTIONS.sh; do
  filepath="${AHMYZSH_DIR}/${f}"
  if [[ -f "${filepath}" ]]; then
    # Check for eval inside call_ function specifically
    if awk '/^(function )?call_\(\)/,/^}/' "${filepath}" | grep -q 'eval ' 2>/dev/null; then
      fail "${f} call_() still uses eval"
    else
      pass "${f} call_() is eval-free"
    fi
  fi
done

# ═══════════════════════════════════════════════
# Test 7: Operator precedence fix in add_to_path_
# ═══════════════════════════════════════════════
echo ""
echo -e "${BLUE}── Bug Fix: add_to_path_ operator precedence ──${NC}"

filepath="${AHMYZSH_DIR}/core/compute-path/path.sh"
if [[ -f "${filepath}" ]]; then
  # The old bug was: [ -z "$1" ] || [ -d "$1" ] && export PATH=...
  # Only check non-comment lines
  if grep -v '^\s*#' "${filepath}" | grep -q '\[ -z "\$1" \] || \[ -d "\$1" \] &&' 2>/dev/null; then
    fail "path.sh still has operator precedence bug"
  else
    pass "path.sh operator precedence fixed"
  fi
fi

filepath="${AHMYZSH_DIR}/lib/path.sh"
if [[ -f "${filepath}" ]]; then
  if grep -q '\[\[ -n "\$1" \]\] && \[\[ -d "\$1" \]\]' "${filepath}" 2>/dev/null; then
    pass "lib/path.sh uses correct operator precedence"
  else
    fail "lib/path.sh may have operator precedence issue"
  fi
fi

# ═══════════════════════════════════════════════
# Test 8: Zsh non-interactive boot test
# ═══════════════════════════════════════════════
echo ""
echo -e "${BLUE}── Non-Interactive Boot Test ──${NC}"

if command -v zsh >/dev/null 2>&1; then
  # Run zsh non-interactively with AHMYZSH sourced
  BOOT_OUTPUT=$(AHMYZSH="${AHMYZSH_DIR}" zsh -c "source '${AHMYZSH_DIR}/source-me-in-etc-zshenv.sh' 2>&1; echo BOOT_OK" 2>&1) || true
  if echo "${BOOT_OUTPUT}" | grep -q "BOOT_OK"; then
    pass "Non-interactive boot completes without fatal errors"
  else
    fail "Non-interactive boot failed"
    echo "    Output: ${BOOT_OUTPUT}"
  fi
else
  skip "zsh not available — skipping boot test"
fi

# ═══════════════════════════════════════════════
# Summary
# ═══════════════════════════════════════════════
echo ""
echo -e "${BLUE}══════════════════════════════════════════════${NC}"
TOTAL=$((PASS + FAIL + SKIP))
echo -e "  Total: ${TOTAL}  ${GREEN}Passed: ${PASS}${NC}  ${RED}Failed: ${FAIL}${NC}  ${YELLOW}Skipped: ${SKIP}${NC}"
echo -e "${BLUE}══════════════════════════════════════════════${NC}"
echo ""

if [[ ${FAIL} -gt 0 ]]; then
  exit 1
else
  exit 0
fi
