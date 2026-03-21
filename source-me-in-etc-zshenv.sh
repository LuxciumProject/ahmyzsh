#!/usr/bin/env zsh
# source-me-in-etc-zshenv.sh — AHMYZSH Entry Point
# Source this file from /etc/zshenv or ~/.zshenv to initialize AHMYZSH.
# Portable: works on any zsh-capable system (Linux, macOS, BSD).
#
# Usage (add one of these to your system):
#   echo 'source /path/to/ahmyzsh/source-me-in-etc-zshenv.sh' >> ~/.zshenv
#   echo 'source /path/to/ahmyzsh/source-me-in-etc-zshenv.sh' | sudo tee -a /etc/zshenv

# ── Reset terminal formatting ────────────────────────────────────────────────
echo -n -e '\u001b[0m'

# ── 0) Auto-detect AHMYZSH location ──────────────────────────────────────────
# Derive AHMYZSH from this file's real path (zsh built-in, 0 forks).
# Users can override by exporting AHMYZSH before sourcing this file.
if [[ -z "${AHMYZSH}" ]]; then
  if [[ -n "${ZSH_VERSION}" ]]; then
    export AHMYZSH="${${(%):-%x}:A:h}"
  else
    # Fallback for bash/sh (requires readlink)
    export AHMYZSH="$(cd "$(dirname "${BASH_SOURCE[0]:-$0}")" && pwd)"
  fi
fi
export AHMYZSH_CACHE="${AHMYZSH_CACHE:="${HOME}/.cache/ahmyzsh"}"
export CACHED_PATH="${CACHED_PATH:="${AHMYZSH_CACHE}/path.env"}"

# ── 1) Load core library modules (0 forks) ──────────────────────────────────
# These modules use guard variables to prevent double-sourcing.
source "${AHMYZSH}/lib/detect.sh"
source "${AHMYZSH}/lib/timer.sh"
source "${AHMYZSH}/lib/path.sh"
source "${AHMYZSH}/lib/locale.sh"
source "${AHMYZSH}/lib/loader.sh"
source "${AHMYZSH}/lib/runtimes.sh"

# ── 2) Initialize boot timer ────────────────────────────────────────────────
ahmyzsh_timer_init

# ── 3) Load user overrides (optional ~/.ahmyzshrc) ──────────────────────────
# Users can set AHMYZSH_LANG, AHMYZSH_ENABLE_*, VERBOSA, etc. here.
[[ -f "${HOME}/.ahmyzshrc" ]] && source "${HOME}/.ahmyzshrc"

# ── 4) Configure locale ─────────────────────────────────────────────────────
__LOCALE__

# ── 5) Load or rebuild PATH ─────────────────────────────────────────────────
ahmyzsh_timer_checkpoint PATH
load_cached_path
ahmyzsh_timer_since PATH
export TIME_TO_PATH="${REPLY}"

# ── 6) Load legacy support (MAIN-FUNCTIONS.sh) ──────────────────────────────
# This sources the original loader functions for backward compatibility
# with core/functions, core/aliases, etc.
source "${AHMYZSH}/MAIN-FUNCTIONS.sh"

# ── 7) Bootstrap MAIN.sh ────────────────────────────────────────────────────
export MAIN_BOOTSTRAP="${MAIN_BOOTSTRAP:="${AHMYZSH}/MAIN.sh"}"
if [[ -f "${MAIN_BOOTSTRAP}" ]]; then
  source "${MAIN_BOOTSTRAP}"
  SCIENTIA_ES_LUX_PRINCIPIUM
else
  [[ -o interactive ]] && echo "Error: '${MAIN_BOOTSTRAP}' not found"
  unset -v MAIN_BOOTSTRAP
fi
