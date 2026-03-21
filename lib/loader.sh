#!/usr/bin/env zsh
# lib/loader.sh — File sourcing infrastructure
# Provides functions for loading shell files and directories of shell files.
# Replaces MAIN-FUNCTIONS.sh loader functions with cleaner implementations.

# Guard: prevent double-sourcing
[[ -n "${_AHMYZSH_LOADER_LOADED}" ]] && return 0
_AHMYZSH_LOADER_LOADED=1

# --- File sourcing ---

# Source a file safely (with existence and readability checks)
source_() {
  if [[ -z "$1" ]]; then
    [[ "${VERBOSA:-0}" -gt 4 ]] && echo "Error: source_ called with no file argument"
    return 4
  fi
  if [[ -f "$1" ]]; then
    if [[ -r "$1" ]]; then
      source "$1"
      return 0
    else
      [[ "${VERBOSA:-0}" -gt 6 ]] && echo "Error: '$1' is not readable"
      return 6
    fi
  else
    [[ "${VERBOSA:-0}" -gt 8 ]] && echo "Error: '$1' does not exist"
    return 8
  fi
}

# Call a function by name (no eval — direct invocation)
# BUG FIX: Original used eval which is slow and dangerous.
# Direct function call is safe and fast.
call_() {
  if [[ -z "$1" ]]; then
    [[ "${VERBOSA:-0}" -gt 4 ]] && echo "Error: call_ invoked with no function name"
    return 4
  fi
  # Check function exists before calling
  if typeset -f "$1" > /dev/null 2>&1; then
    "$1"
    return $?
  else
    [[ "${VERBOSA:-0}" -gt 2 ]] && echo "Warning: function '$1' not found"
    return 1
  fi
}

# Source a file then call a function defined in it
load_() {
  source_ "$1" && call_ "$2"
}

# --- Directory loading ---

# Source all .sh files in a directory (sorted by name)
Load_all_files_d() {
  local dir="$1"
  if [[ ! -d "${dir}" ]]; then
    [[ "${VERBOSA:-0}" -gt 10 ]] && echo "Error: directory '${dir}' not found"
    return 2
  fi

  local f
  for f in "${dir}/"*.sh(N); do
    if [[ -r "${f}" ]]; then
      source "${f}"
    fi
  done
}

# Source all .sh files with verbose timing output
Load_all_files_d_v() {
  local dir="$1"
  if [[ ! -d "${dir}" ]]; then
    [[ "${VERBOSA:-0}" -gt 10 ]] && echo "Error: directory '${dir}' not found"
    return 2
  fi

  local f
  for f in "${dir}/"*.sh(N); do
    if [[ -r "${f}" ]]; then
      source "${f}"
      if [[ "${VERBOSA:-0}" -gt 5 ]]; then
        ahmyzsh_timer_since_boot_ms 2>/dev/null
        echo "${BEGIN_SOURCING_FILES:-#} ${REPLY:-?}ms ${f} ${END_SOURCING_FILES:-}"
      fi
    else
      [[ "${VERBOSA:-0}" -gt 10 ]] && echo "Error: '${f}' is not readable"
    fi
  done
}

# Load all configuration and settings files in the standard order
load_all_config_and_settings_files() {
  local core="${AHMYZSH_CORE:-${AHMYZSH}/core}"

  if [[ "${VERBOSA:-0}" -gt 15 ]]; then
    export BEGIN_SOURCING_FILES="\u001b[0m\u001b[34m#   \u001b[0m\u001b[33m\uf085\u001b[0m\u001b[34m  >"
    export END_SOURCING_FILES="\u001b[0m\u001b[31;1m\u001b[1m"
    Load_all_files_d_v "${core}/paths"
    Load_all_files_d_v "${core}/layouts"
    Load_all_files_d_v "${core}/compute-path"
    Load_all_files_d_v "${core}/functions"
    Load_all_files_d_v "${core}/aliases"
    Load_all_files_d_v "${core}/env"
  else
    Load_all_files_d "${core}/paths"
    Load_all_files_d "${core}/layouts"
    Load_all_files_d "${core}/compute-path"
    Load_all_files_d "${core}/functions"
    Load_all_files_d "${core}/aliases"
    Load_all_files_d "${core}/env"
  fi
}

# Reload alias and configuration files
alias reload_alias_and_conf="load_all_config_and_settings_files"
alias reloadpath="ahmyzsh_rebuild_path"
