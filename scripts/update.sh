#!/usr/bin/env bash
# scripts/update.sh — Update AHMYZSH and its dependencies
# Safe to run at any time. Updates git submodules and clears caches.
#
# Usage:
#   bash scripts/update.sh

set -euo pipefail

# --- Colors ---
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

info()  { echo -e "${BLUE}[INFO]${NC} $*"; }
ok()    { echo -e "${GREEN}[OK]${NC}   $*"; }
warn()  { echo -e "${YELLOW}[WARN]${NC} $*"; }
err()   { echo -e "${RED}[ERR]${NC}  $*"; }

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
AHMYZSH_DIR="$(cd "${SCRIPT_DIR}/.." && pwd)"

echo ""
echo -e "${BLUE}╔══════════════════════════════════════════╗${NC}"
echo -e "${BLUE}║       AHMYZSH Updater v2.0.0             ║${NC}"
echo -e "${BLUE}╚══════════════════════════════════════════╝${NC}"
echo ""

cd "${AHMYZSH_DIR}"

# --- Step 1: Update main repository ---
info "Pulling latest changes..."
if git pull --ff-only 2>/dev/null; then
  ok "Repository updated"
else
  warn "Could not fast-forward. You may need to merge manually."
fi

# --- Step 2: Update submodules ---
info "Updating git submodules..."
if git submodule update --init --recursive 2>/dev/null; then
  ok "Submodules updated"
else
  warn "Some submodules failed to update"
fi

# --- Step 3: Clear compiled bytecode ---
info "Clearing compiled zsh bytecode (.zwc files)..."
find "${AHMYZSH_DIR}" -name "*.zwc" -type f -delete 2>/dev/null
ok "Bytecode cache cleared"

# --- Step 4: Rebuild PATH cache ---
info "Rebuilding PATH cache..."
CACHE_DIR="${HOME}/.cache/ahmyzsh"
if [[ -f "${CACHE_DIR}/path.env" ]]; then
  rm -f "${CACHE_DIR}/path.env"
  ok "PATH cache cleared (will be rebuilt on next shell start)"
else
  ok "No PATH cache to clear"
fi

# --- Step 5: Clear compile sentinel ---
if [[ -f "${CACHE_DIR}/.last_compile" ]]; then
  rm -f "${CACHE_DIR}/.last_compile"
  ok "Compile sentinel cleared (will recompile on next shell start)"
fi

echo ""
echo -e "${GREEN}╔══════════════════════════════════════════╗${NC}"
echo -e "${GREEN}║       Update Complete!                   ║${NC}"
echo -e "${GREEN}╚══════════════════════════════════════════╝${NC}"
echo ""
echo "  Start a new shell to apply changes."
echo ""
