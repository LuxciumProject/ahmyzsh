#!/usr/bin/env zsh
# core/compute-path/path.sh — PATH construction and management
# This file defines functions for building, caching, and managing PATH.
# Fixed bugs: operator precedence in add_to_path_, unquoted PATH in cache_path.

# Guard: prevent redundant sourcing (was sourced 3x in old boot sequence)
[[ -n "${_AHMYZSH_COMPUTE_PATH_LOADED}" ]] && return 0
_AHMYZSH_COMPUTE_PATH_LOADED=1

# --- CUDA / GPU paths (only set if CUDA is installed) ---

if [[ -d "/usr/local/cuda" ]]; then
  : "${CUDA_VERSION:="cuda"}"
  # Try to find a specific version
  for cv in cuda-12.8 cuda-12.6 cuda-12.4 cuda-12.2 cuda-12.0 cuda-11.8 cuda; do
    if [[ -d "/usr/local/${cv}" ]]; then
      CUDA_VERSION="${cv}"
      break
    fi
  done
  export CUDA_VERSION
  export CUDA_HOME="/usr/local/${CUDA_VERSION}"
  export CUDA_BIN="${CUDA_HOME}/bin"
  export CUDA_LIB="${CUDA_HOME}/lib64"
  export LD_LIBRARY_PATH="${CUDA_LIB}${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}"
fi

# --- Tool path variables (auto-detect) ---

[[ -d "${HOME}/.local/share/fnm" ]] && export FNM_PATH="${HOME}/.local/share/fnm"
export PATH_BAK_0="${PATH}"
[[ -d "${HOME}/.local/share/pnpm" ]] && export PNPM_HOME="${HOME}/.local/share/pnpm"
[[ -d "${HOME}/.rbenv" ]] && export RBENV_PATH="${HOME}/.rbenv/bin:${HOME}/.rbenv/shims"

# Auto-detect .NET root
for dn in /usr/lib64/dotnet /usr/share/dotnet /usr/local/share/dotnet "${HOME}/.dotnet"; do
  if [[ -d "${dn}" ]]; then
    export DOTNET_ROOT="${dn}"
    break
  fi
done

# --- PATH manipulation (FIXED operator precedence) ---

# Prepend a directory to PATH (only if it exists)
# BUG FIX: Original was: [ -z "$1" ] || [ -d "$1" ] && export PATH="..."
# This incorrectly adds empty directories because || has lower precedence than &&.
# Fixed: require BOTH non-empty AND directory exists.
function add_to_path_() {
  [[ -n "$1" ]] && [[ -d "$1" ]] && export PATH="${1}${PATH:+:${PATH}}"
}
alias add_to_path='add_to_path_'

# Append a directory to PATH (only if it exists) - FIXED
function append_to_path_() {
  [[ -n "$1" ]] && [[ -d "$1" ]] && export PATH="${PATH:+${PATH}:}${1}"
}

function append_to_path() {
  if [[ -z "$1" ]] || [[ ! -d "$1" ]]; then
    return 0
  fi
  PATH="${PATH:+${PATH}:}$1"
  export PATH
}

function prepend_to_path() {
  if [[ -z "$1" ]] || [[ ! -d "$1" ]]; then
    return 0
  fi
  PATH="$1${PATH:+:${PATH}}"
  export PATH
}

# --- PATH deduplication ---

function dedup_pathvar_() {
  if command -v perl >/dev/null 2>&1; then
    _dedup_pathvar() {
      local pathvar_name="$1"
      local pathvar_value
      eval "pathvar_value=\"\${${pathvar_name}}\""
      local deduped_path
      deduped_path="$(perl -e 'print join(":",grep { not $seen{$_}++ } split(/:/, $ARGV[0]))' "$pathvar_value")"
      eval "${pathvar_name}=\"\${deduped_path}\""
    }
    _dedup_pathvar "${@}"
    unset -f _dedup_pathvar
  else
    # Pure awk fallback
    local pathvar_name="$1"
    local pathvar_value
    eval "pathvar_value=\"\${${pathvar_name}}\""
    local deduped
    deduped="$(printf '%s' "${pathvar_value}" | awk -v RS=: -v ORS=: '!seen[$0]++')"
    eval "${pathvar_name}=\"\${deduped%:}\""
  fi
}

# --- NVM (legacy, on-demand only) ---

function usenvm() {
  export NVM_DIR="$HOME/.nvm"
  [[ -s "$NVM_DIR/nvm.sh" ]] && \. "$NVM_DIR/nvm.sh"
  [[ -s "$NVM_DIR/bash_completion" ]] && \. "$NVM_DIR/bash_completion"
}

# --- rbenv (only if available) ---

function rbenv_() {
  command -v rbenv >/dev/null 2>&1 || return 0
  eval "$(rbenv init - zsh 2>/dev/null)"
}

# --- Rust (only if installed) ---

function rust_up_() {
  [[ -d "${HOME}/.cargo/bin" ]] && add_to_path_ "${HOME}/.cargo/bin"
  [[ -f "${HOME}/.cargo/env" ]] && source "${HOME}/.cargo/env"
}

# --- Standard PATH builders ---

function __append_sbin_to_path() {
  export PATH="/usr/local/sbin"
  append_to_path_ "/usr/local/bin"
  append_to_path_ "/usr/sbin"
  append_to_path_ "/usr/bin"
  append_to_path_ "/sbin"
  append_to_path_ "/bin"
  append_to_path_ "${AHMYZSH}/core/bin"
  append_to_path_ "${HOME}/.local/bin"
  append_to_path_ "${HOME}/.bun/bin"
  append_to_path_ "/snap/bin"
}

function __append_bin_to_path() {
  export PATH="/usr/local/bin"
  append_to_path_ "/usr/bin"
  append_to_path_ "/bin"
  append_to_path_ "${AHMYZSH}/core/bin"
  append_to_path_ "${HOME}/.local/bin"
  append_to_path_ "${HOME}/.bun/bin"
  append_to_path_ "/snap/bin"
}

# --- Extended PATH (only adds directories that exist) ---

function __compute_extended_path() {
  add_to_path_ "/usr/lib64/ccache"
  add_to_path_ "/usr/lib64/qt5/bin"
  add_to_path_ "/usr/local/go/bin"
  [[ -n "${CUDA_BIN}" ]] && add_to_path_ "${CUDA_BIN}"
  add_to_path_ "/opt/nvidia/nsight-compute"
  add_to_path_ "/app/bin"
  add_to_path_ "${HOME}/.yarn/bin"
  add_to_path_ "/src/webcamoid/bin"
  add_to_path_ "${HOME}/.cargo/bin"
  add_to_path_ '/usr/local/go/bin'
  add_to_path_ "${HOME}/.rbenv/shims"
  add_to_path_ "${HOME}/.rbenv/bin"

  # Conda init (only if enabled)
  if [[ "${AHMYZSH_ENABLE_CONDA:-0}" == "1" ]]; then
    conda_init 2>/dev/null || conda_init_esoteric-argentum 2>/dev/null
  fi

  add_to_path_ "${HOME}/main-vscode/bin"
  [[ -n "${CONDA3}" ]] && add_to_path_ "${CONDA3}"
  [[ -n "${PNPM_HOME}" ]] && add_to_path_ "$PNPM_HOME"
  add_to_path_ "${HOME}/.config/yarn/global/node_modules/.bin"
  add_to_path_ "${HOME}/.local/bin"
  [[ -n "${FNM_PATH}" ]] && add_to_path_ "${FNM_PATH}"
  append_to_path_ "${HOME}/.bun/bin"
  add_to_path_ "${HOME}/bin"
  export LD_LIBRARY_PATH="/usr/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}"
  [[ -n "${CUDA_LIB}" ]] && export LD_LIBRARY_PATH="${CUDA_LIB}${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}"
}

function __dedup_path() {
  dedup_pathvar_ PATH
  export PATH
}

# --- set_path (FIXED: removed `add_to_path_ eval "$(fnm env)"` bug) ---

function set_path() {
  __append_bin_to_path
  [[ -n "${FNM_PATH}" ]] && add_to_path_ "${FNM_PATH}"
  # Initialize fnm if available (don't pass eval as a directory!)
  if command -v fnm >/dev/null 2>&1; then
    eval "$(fnm env 2>/dev/null)"
  fi
  __compute_extended_path
  __dedup_path
}

function set_sbin_path() {
  __append_sbin_to_path
  __compute_extended_path
  __dedup_path
}

alias add_sbin=set_sbin_path
alias sbin_path=set_sbin_path
alias set_sbin=set_sbin_path

# --- cache_path (FIXED: properly quoted PATH) ---

function cache_path() {
  set_path >/dev/null
  # BUG FIX: PATH must be quoted to prevent word splitting
  echo "export PATH=\"${PATH}\"" >"${CACHED_PATH}"
}

function reload_path() {
  echo "PATH was:"
  echo "$PATH" | tr ":" "\n"
  source "${AHMYZSH}/core/compute-path/path.sh" 2>/dev/null
  __append_bin_to_path
  set_path
  cache_path
  echo "PATH now is:"
  echo "$PATH" | tr ":" "\n"
}
