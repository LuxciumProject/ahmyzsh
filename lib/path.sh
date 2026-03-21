#!/usr/bin/env zsh
# lib/path.sh — PATH building and caching (portable, bug-fixed)
# Provides functions to prepend/append directories to PATH,
# deduplicate PATH entries, and cache the computed PATH.

# Guard: prevent double-sourcing
[[ -n "${_AHMYZSH_PATH_LOADED}" ]] && return 0
_AHMYZSH_PATH_LOADED=1

# --- PATH manipulation (fixed operator precedence) ---

# Prepend a directory to PATH if it exists
# BUG FIX: Original had [ -z "$1" ] || [ -d "$1" ] && ... which is wrong
# The || has lower precedence than &&, so this would add empty dirs.
# Fixed: require non-empty AND directory exists
prepend_to_path() {
  [[ -n "$1" ]] && [[ -d "$1" ]] && PATH="$1${PATH:+:${PATH}}"
  export PATH
}

# Append a directory to PATH if it exists
append_to_path() {
  [[ -n "$1" ]] && [[ -d "$1" ]] && PATH="${PATH:+${PATH}:}$1"
  export PATH
}

# Legacy aliases (point to fixed versions)
add_to_path_() { prepend_to_path "$@"; }
append_to_path_() { append_to_path "$@"; }
alias add_to_path='prepend_to_path'

# --- PATH deduplication (portable: uses awk instead of perl) ---

dedup_path() {
  if command -v perl >/dev/null 2>&1; then
    PATH="$(perl -e 'print join(":",grep { not $seen{$_}++ } split(/:/, $ARGV[0]))' "$PATH")"
  else
    # Pure awk fallback (no perl required)
    PATH="$(printf '%s' "$PATH" | awk -v RS=: -v ORS=: '!seen[$0]++')"
    PATH="${PATH%:}"  # Remove trailing colon
  fi
  export PATH
}

# Generic dedup for any colon-separated variable
dedup_pathvar_() {
  local varname="${1:?variable name required}"
  local varval
  eval "varval=\"\${${varname}}\""
  if command -v perl >/dev/null 2>&1; then
    eval "${varname}=\"\$(perl -e 'print join(\":\",grep { not \$seen{\$_}++ } split(/:/, \$ARGV[0]))' \"\${varval}\")\""
  else
    local deduped
    deduped="$(printf '%s' "${varval}" | awk -v RS=: -v ORS=: '!seen[$0]++')"
    eval "${varname}=\"\${deduped%:}\""
  fi
}

# --- PATH construction (portable) ---

# Build the base PATH from standard system directories
__build_base_path() {
  PATH="/usr/local/bin"
  for dir in /usr/bin /bin /usr/local/sbin /usr/sbin /sbin; do
    [[ -d "${dir}" ]] && PATH="${PATH}:${dir}"
  done
  # Add user-level directories
  [[ -d "${HOME}/.local/bin" ]] && PATH="${HOME}/.local/bin:${PATH}"
  [[ -d "${HOME}/bin" ]] && PATH="${HOME}/bin:${PATH}"
  # Add AHMYZSH core/bin
  [[ -d "${AHMYZSH}/core/bin" ]] && PATH="${PATH}:${AHMYZSH}/core/bin"
  export PATH
}

# Add extended development tool paths (only dirs that exist)
__add_dev_tool_paths() {
  # Only add paths for tools that are actually installed
  local -a dirs=(
    "${CUDA_BIN}"
    "/usr/lib64/ccache"
    "/usr/lib64/qt5/bin"
    "/usr/local/go/bin"
    "${HOME}/.cargo/bin"
    "${HOME}/.rbenv/shims"
    "${HOME}/.rbenv/bin"
    "${HOME}/.yarn/bin"
    "${HOME}/.config/yarn/global/node_modules/.bin"
    "${HOME}/.bun/bin"
    "${PNPM_HOME}"
    "${FNM_PATH}"
    "${CONDA3}"
  )
  for dir in "${dirs[@]}"; do
    prepend_to_path "${dir}"
  done
}

# --- PATH caching ---

# Cache the current PATH to a file for fast subsequent loads
cache_path() {
  local cache_file="${CACHED_PATH:-${AHMYZSH_CACHE}/path.env}"
  local cache_dir
  cache_dir="$(dirname "${cache_file}")"

  # Ensure cache directory exists
  [[ -d "${cache_dir}" ]] || mkdir -p "${cache_dir}"

  # Write cached PATH with proper quoting
  {
    echo "# AHMYZSH cached PATH — generated $(date -R 2>/dev/null || date)"
    echo "# Regenerate with: ahmyzsh_rebuild_path"
    echo "export PATH=\"${PATH}\""
  } > "${cache_file}"
}

# Load cached PATH or rebuild it
load_cached_path() {
  local cache_file="${CACHED_PATH:-${AHMYZSH_CACHE}/path.env}"
  if [[ -f "${cache_file}" ]]; then
    source "${cache_file}"
    return 0
  else
    __build_base_path
    __add_dev_tool_paths
    dedup_path
    cache_path
    return 1
  fi
}

# Force rebuild PATH cache
ahmyzsh_rebuild_path() {
  __build_base_path
  __add_dev_tool_paths
  dedup_path
  cache_path
  echo "PATH rebuilt and cached to ${CACHED_PATH}"
}

# Show current PATH entries (one per line)
echo_path() {
  echo ""
  echo "${PATH}" | tr ':' '\n'
  echo ""
}
