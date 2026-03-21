#!/usr/bin/env zsh
# lib/runtimes.sh — Conditional runtime initialization
# Each runtime (Node/FNM, Python/Conda, Ruby/rbenv, Rust/Cargo) is initialized
# only when the corresponding tool is detected on the system.
# All runtimes are gated behind AHMYZSH_ENABLE_* feature flags.

# Guard: prevent double-sourcing
[[ -n "${_AHMYZSH_RUNTIMES_LOADED}" ]] && return 0
_AHMYZSH_RUNTIMES_LOADED=1

# --- Feature flags (set to 0 to disable) ---
# These can be overridden in ~/.ahmyzshrc or before sourcing

: "${AHMYZSH_ENABLE_FNM:=1}"       # Fast Node Manager
: "${AHMYZSH_ENABLE_CONDA:=0}"     # Conda/Anaconda (disabled by default — heavy)
: "${AHMYZSH_ENABLE_RBENV:=0}"     # Ruby rbenv (disabled by default)
: "${AHMYZSH_ENABLE_RUST:=1}"      # Rust/Cargo
: "${AHMYZSH_ENABLE_DOTNET:=0}"    # .NET SDK (disabled by default)

# --- FNM (Fast Node Manager) ---

fnm_() {
  if [[ "${AHMYZSH_ENABLE_FNM}" != "1" ]]; then
    return 0
  fi
  if ! command -v fnm >/dev/null 2>&1; then
    [[ "${VERBOSA:-0}" -gt 2 ]] && echo "Info: fnm not found, skipping Node.js setup"
    return 0
  fi
  eval "$(fnm env --use-on-cd 2>/dev/null)"
  # Only load completions in interactive shells
  if is_interactive 2>/dev/null; then
    eval "$(fnm completions --shell zsh 2>/dev/null)"
  fi
}

# --- Conda / Anaconda ---

conda_init() {
  if [[ "${AHMYZSH_ENABLE_CONDA}" != "1" ]]; then
    return 0
  fi

  # Auto-detect conda location
  local conda_bin=""
  local -a conda_paths=(
    "${HOME}/anaconda3/bin/conda"
    "${HOME}/miniconda3/bin/conda"
    "${HOME}/miniforge3/bin/conda"
    "${HOME}/mambaforge/bin/conda"
    "/opt/conda/bin/conda"
    "/usr/local/anaconda3/bin/conda"
  )
  for p in "${conda_paths[@]}"; do
    if [[ -x "${p}" ]]; then
      conda_bin="${p}"
      break
    fi
  done

  if [[ -z "${conda_bin}" ]]; then
    [[ "${VERBOSA:-0}" -gt 2 ]] && echo "Info: conda not found, skipping Python/Conda setup"
    return 0
  fi

  local conda_base="${conda_bin:h:h}"  # Parent of bin/
  __conda_setup="$("${conda_bin}" 'shell.zsh' 'hook' 2>/dev/null)"
  if [[ $? -eq 0 ]]; then
    eval "${__conda_setup}"
  else
    if [[ -f "${conda_base}/etc/profile.d/conda.sh" ]]; then
      source "${conda_base}/etc/profile.d/conda.sh"
    else
      prepend_to_path "${conda_base}/bin"
    fi
  fi
  unset __conda_setup
}

# Legacy alias for conda initialization
conda_init_esoteric-argentum() { conda_init; }

# --- rbenv (Ruby) ---

rbenv_() {
  if [[ "${AHMYZSH_ENABLE_RBENV}" != "1" ]]; then
    return 0
  fi
  if ! command -v rbenv >/dev/null 2>&1; then
    [[ "${VERBOSA:-0}" -gt 2 ]] && echo "Info: rbenv not found, skipping Ruby setup"
    return 0
  fi
  eval "$(rbenv init - zsh 2>/dev/null)"
}

# --- Rust / Cargo ---

rust_up_() {
  if [[ "${AHMYZSH_ENABLE_RUST}" != "1" ]]; then
    return 0
  fi
  if [[ -d "${HOME}/.cargo/bin" ]]; then
    prepend_to_path "${HOME}/.cargo/bin"
  fi
  if [[ -f "${HOME}/.cargo/env" ]]; then
    source "${HOME}/.cargo/env"
  fi
}

# --- .NET ---

dotnet_init() {
  if [[ "${AHMYZSH_ENABLE_DOTNET}" != "1" ]]; then
    return 0
  fi
  # Auto-detect .NET root
  local -a dotnet_paths=(
    "/usr/lib64/dotnet"
    "/usr/share/dotnet"
    "/usr/local/share/dotnet"
    "${HOME}/.dotnet"
  )
  for p in "${dotnet_paths[@]}"; do
    if [[ -d "${p}" ]]; then
      export DOTNET_ROOT="${p}"
      prepend_to_path "${p}"
      break
    fi
  done
  export DOTNET_CLI_TELEMETRY_OPTOUT=1
}

# --- Initialize all enabled runtimes ---

ahmyzsh_init_runtimes() {
  fnm_
  conda_init
  rbenv_
  rust_up_
  dotnet_init
}
