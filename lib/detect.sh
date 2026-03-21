#!/usr/bin/env zsh
# lib/detect.sh — Shell type detection (0 forks)
# Detects shell type using built-in variables instead of forking processes.
# Sourced early in the boot sequence before the non-interactive gate.

# Guard: prevent double-sourcing
[[ -n "${_AHMYZSH_DETECT_LOADED}" ]] && return 0
_AHMYZSH_DETECT_LOADED=1

# --- Shell type detection (0 forks) ---

# Detect zsh by checking ZSH_VERSION (built-in, no fork needed)
if [[ -n "${ZSH_VERSION}" ]]; then
  IS_ZSH_=1
else
  IS_ZSH_=0
fi
export IS_ZSH_

# Detect bash by checking BASH_VERSION
if [[ -n "${BASH_VERSION}" ]]; then
  IS_BASH_=1
else
  IS_BASH_=0
fi
export IS_BASH_

# --- Interactive / login detection (0 forks) ---

# Check if the shell is interactive
is_interactive() {
  [[ -o interactive ]]
}

# Check if the shell is a login shell
is_login() {
  [[ -o login ]]
}

# Legacy compatibility aliases
isinteractive() { is_interactive; }
islogin() { is_login; }
iszsh() { [[ -n "${ZSH_VERSION}" ]]; }
isbash() { [[ -n "${BASH_VERSION}" ]]; }

# Combined checks
isloginorinteractive() { is_login || is_interactive; }
isloginandinteractive() { is_login && is_interactive; }
