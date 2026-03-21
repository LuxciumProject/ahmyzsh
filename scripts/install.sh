#!/usr/bin/env bash
# scripts/install.sh — Idempotent AHMYZSH installer
# Safe to run multiple times. Will not overwrite existing configurations.
#
# Usage:
#   bash scripts/install.sh          # Install with defaults
#   AHMYZSH_LANG=fr_CA.UTF-8 bash scripts/install.sh  # Custom locale
#
# What this script does:
#   1. Verifies zsh is installed
#   2. Initializes git submodules (ohmyzsh, powerlevel10k, plugins)
#   3. Creates ~/.ahmyzshrc with user defaults (if not exists)
#   4. Adds source line to ~/.zshenv (if not already present)
#   5. Creates cache directory
#   6. Creates ~/.env for private environment variables (if not exists)
#
# What this script does NOT do:
#   - Modify /etc/zshenv (requires sudo — printed as manual step)
#   - Change your default shell (printed as manual step)
#   - Remove any existing configuration

set -euo pipefail

# --- Colors ---
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

info()  { echo -e "${BLUE}[INFO]${NC} $*"; }
ok()    { echo -e "${GREEN}[OK]${NC}   $*"; }
warn()  { echo -e "${YELLOW}[WARN]${NC} $*"; }
err()   { echo -e "${RED}[ERR]${NC}  $*"; }

# --- Detect AHMYZSH location ---
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
AHMYZSH_DIR="$(cd "${SCRIPT_DIR}/.." && pwd)"

echo ""
echo -e "${BLUE}╔══════════════════════════════════════════╗${NC}"
echo -e "${BLUE}║       AHMYZSH Installer v2.0.0           ║${NC}"
echo -e "${BLUE}╚══════════════════════════════════════════╝${NC}"
echo ""

# --- Step 1: Check prerequisites ---
info "Checking prerequisites..."

if ! command -v zsh >/dev/null 2>&1; then
  err "zsh is not installed!"
  echo ""
  echo "  Install zsh first:"
  echo "    Ubuntu/Debian:  sudo apt install zsh"
  echo "    Fedora/RHEL:    sudo dnf install zsh"
  echo "    macOS:          brew install zsh  (or use system zsh)"
  echo "    Arch:           sudo pacman -S zsh"
  echo ""
  exit 1
fi
ok "zsh found: $(zsh --version)"

if ! command -v git >/dev/null 2>&1; then
  err "git is not installed! Please install git first."
  exit 1
fi
ok "git found: $(git --version | head -1)"

# --- Step 2: Initialize git submodules ---
info "Initializing git submodules..."
cd "${AHMYZSH_DIR}"

if [[ -f ".gitmodules" ]]; then
  git submodule update --init --recursive 2>/dev/null || {
    warn "Some submodules failed to initialize (this is OK for a first install)"
    warn "You can retry later with: cd ${AHMYZSH_DIR} && git submodule update --init --recursive"
  }
  ok "Git submodules initialized"
else
  warn "No .gitmodules found — skipping submodule initialization"
fi

# --- Step 3: Create ~/.ahmyzshrc (user overrides) ---
AHMYZSHRC="${HOME}/.ahmyzshrc"
if [[ ! -f "${AHMYZSHRC}" ]]; then
  info "Creating ${AHMYZSHRC} with defaults..."
  cat > "${AHMYZSHRC}" << RCEOF
# ~/.ahmyzshrc — AHMYZSH User Configuration
# This file is sourced before the main boot sequence.
# Set your preferences here.

# ── Locale ──────────────────────────────────────────────────────────
# Default: en_US.UTF-8. Set to your preferred locale.
# export AHMYZSH_LANG="fr_CA.UTF-8"

# ── Runtime Feature Flags ───────────────────────────────────────────
# Set to 1 to enable, 0 to disable
# export AHMYZSH_ENABLE_FNM=1       # Fast Node Manager
# export AHMYZSH_ENABLE_CONDA=0     # Conda/Anaconda (heavy)
# export AHMYZSH_ENABLE_RBENV=0     # Ruby rbenv
# export AHMYZSH_ENABLE_RUST=1      # Rust/Cargo
# export AHMYZSH_ENABLE_DOTNET=0    # .NET SDK

# ── Verbosity ───────────────────────────────────────────────────────
# Higher values = more debug output (0 = silent, 1 = normal)
# export VERBOSA=1

# ── Editor ──────────────────────────────────────────────────────────
# export EDITOR="code"    # VS Code
# export EDITOR="nvim"    # Neovim
# export EDITOR="nano"    # Nano (default)
RCEOF
  ok "Created ${AHMYZSHRC}"
else
  ok "${AHMYZSHRC} already exists — not overwriting"
fi

# --- Step 4: Add source line to ~/.zshenv ---
ZSHENV="${HOME}/.zshenv"
SOURCE_LINE="source \"${AHMYZSH_DIR}/source-me-in-etc-zshenv.sh\""

if [[ -f "${ZSHENV}" ]] && grep -qF "source-me-in-etc-zshenv.sh" "${ZSHENV}"; then
  ok "AHMYZSH already configured in ${ZSHENV}"
else
  info "Adding AHMYZSH to ${ZSHENV}..."
  echo "" >> "${ZSHENV}"
  echo "# AHMYZSH — Custom Zsh Shell Environment Framework" >> "${ZSHENV}"
  echo "${SOURCE_LINE}" >> "${ZSHENV}"
  ok "Added AHMYZSH source line to ${ZSHENV}"
fi

# --- Step 5: Create cache directory ---
CACHE_DIR="${HOME}/.cache/ahmyzsh"
if [[ ! -d "${CACHE_DIR}" ]]; then
  mkdir -p "${CACHE_DIR}"
  ok "Created cache directory: ${CACHE_DIR}"
else
  ok "Cache directory exists: ${CACHE_DIR}"
fi

# --- Step 6: Create ~/.env if not exists ---
if [[ ! -f "${HOME}/.env" ]]; then
  touch "${HOME}/.env"
  ok "Created ${HOME}/.env (for private environment variables)"
else
  ok "${HOME}/.env already exists"
fi

# --- Summary ---
echo ""
echo -e "${GREEN}╔══════════════════════════════════════════╗${NC}"
echo -e "${GREEN}║       Installation Complete!             ║${NC}"
echo -e "${GREEN}╚══════════════════════════════════════════╝${NC}"
echo ""
echo "  AHMYZSH installed at: ${AHMYZSH_DIR}"
echo "  User config:          ${AHMYZSHRC}"
echo "  Shell env:            ${ZSHENV}"
echo "  Cache:                ${CACHE_DIR}"
echo ""

# --- Optional steps ---
if [[ "$(basename "${SHELL}")" != "zsh" ]]; then
  echo -e "${YELLOW}Optional: Make zsh your default shell:${NC}"
  echo "  chsh -s \$(command -v zsh)"
  echo ""
fi

echo -e "${BLUE}To apply changes, start a new zsh session:${NC}"
echo "  zsh"
echo ""
echo -e "${BLUE}To rebuild the PATH cache:${NC}"
echo "  source ${AHMYZSH_DIR}/source-me-in-etc-zshenv.sh && ahmyzsh_rebuild_path"
echo ""
