#!/usr/bin/env zsh
# lib/locale.sh — Locale configuration (0 forks)
# Sets locale variables with sensible defaults.
# Users can override by setting AHMYZSH_LANG before sourcing.

# Guard: prevent double-sourcing
[[ -n "${_AHMYZSH_LOCALE_LOADED}" ]] && return 0
_AHMYZSH_LOCALE_LOADED=1

# --- Locale defaults ---
# Default to en_US.UTF-8 for maximum compatibility.
# Users can set AHMYZSH_LANG=fr_CA.UTF-8 (or any locale) to override.
: "${AHMYZSH_LANG:=en_US.UTF-8}"

__LOCALE__() {
  local locale="${AHMYZSH_LANG}"

  : "${LANG:="${locale}"}"
  : "${LC_CTYPE:="${LANG}"}"
  : "${LC_NUMERIC:="${LANG}"}"
  : "${LC_TIME:="${LANG}"}"
  : "${LC_COLLATE:="${LANG}"}"
  : "${LC_MONETARY:="${LANG}"}"
  : "${LC_MESSAGES:="${LANG}"}"
  : "${LC_PAPER:="${LANG}"}"
  : "${LC_NAME:="${LANG}"}"
  : "${LC_ADDRESS:="${LANG}"}"
  : "${LC_TELEPHONE:="${LANG}"}"
  : "${LC_MEASUREMENT:="${LANG}"}"
  : "${LC_IDENTIFICATION:="${LANG}"}"

  export LANG LC_CTYPE LC_NUMERIC LC_TIME LC_COLLATE LC_MONETARY
  export LC_MESSAGES LC_PAPER LC_NAME LC_ADDRESS LC_TELEPHONE
  export LC_MEASUREMENT LC_IDENTIFICATION
}

# Dynamic locale switcher
# Usage: _LOCALE_ fr CA UTF-8  →  fr_CA.UTF-8
_LOCALE_() {
  local language="${1:-en}"
  local region="${2:+_${2}}"
  local encoding="${3:+.${3}}"
  : "${encoding:=.UTF-8}"
  local locale="${language}${region}${encoding}"

  export LANG="${locale}"
  export LC_CTYPE="${locale}"
  export LC_NUMERIC="${locale}"
  export LC_TIME="${locale}"
  export LC_COLLATE="${locale}"
  export LC_MONETARY="${locale}"
  export LC_MESSAGES="${locale}"
  export LC_PAPER="${locale}"
  export LC_NAME="${locale}"
  export LC_ADDRESS="${locale}"
  export LC_TELEPHONE="${locale}"
  export LC_MEASUREMENT="${locale}"
  export LC_IDENTIFICATION="${locale}"
}
