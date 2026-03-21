#!/usr/bin/env zsh
# core/compute-path/conda-initialize.sh — Portable Conda/Anaconda initialization
# Auto-detects conda installation path instead of hardcoding /home/luxcium/...

# Guard: prevent double-sourcing
[[ -n "${_AHMYZSH_CONDA_INIT_LOADED}" ]] && return 0
_AHMYZSH_CONDA_INIT_LOADED=1

function conda_init_esoteric-argentum() {
  # Auto-detect conda binary location
  local conda_bin=""
  local -a search_paths=(
    "${HOME}/anaconda3/bin/conda"
    "${HOME}/miniconda3/bin/conda"
    "${HOME}/miniforge3/bin/conda"
    "${HOME}/mambaforge/bin/conda"
    "/opt/conda/bin/conda"
    "/usr/local/anaconda3/bin/conda"
    "${HOME}/esoteric-argentum/bin/conda"
  )

  for p in "${search_paths[@]}"; do
    if [[ -x "${p}" ]]; then
      conda_bin="${p}"
      break
    fi
  done

  if [[ -z "${conda_bin}" ]]; then
    # No conda installation found — skip silently
    return 0
  fi

  local conda_base="${conda_bin:h:h}"  # Parent of parent (removes /bin/conda)

  # >>> conda initialize >>>
  # !! Contents within this block are managed by 'conda init' !!
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
  # <<< conda initialize <<<
}

# Alias for backward compatibility
alias conda_init_mystic-mercury=conda_init_esoteric-argentum
