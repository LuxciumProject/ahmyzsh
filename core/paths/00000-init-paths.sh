#!/usr/bin/env zsh
# core/paths/00000-init-paths.sh — Framework path variable exports
# All paths are derived from AHMYZSH (auto-detected) and HOME (system-provided).
# No hardcoded user-specific paths.

export AHMYZSH=${AHMYZSH:="${${(%):-%x}:A:h:h:h}"}
export AHMYZSH_CACHE=${AHMYZSH_CACHE:="${HOME}/.cache/ahmyzsh"}
export CACHED_PATH=${CACHED_PATH:="${AHMYZSH_CACHE}/path.env"}
export MAIN_BOOTSTRAP=${MAIN_BOOTSTRAP:="${AHMYZSH}/MAIN.sh"}

export OHMYZSH="${AHMYZSH}/ohmyzsh"
export ZSH="${OHMYZSH}"
export POWERLEVEL10K="${AHMYZSH}/powerlevel10k"
export ZSH_PLUGINS="${AHMYZSH}/plugins"
export ZSH_THEMES="${AHMYZSH}/themes"

export AHMYZSH_CORE="${AHMYZSH}/core"
export MYZSH_CORE="${AHMYZSH_CORE}"
export ZSH_CORE="${AHMYZSH_CORE}"

export CORE_ALIASES="${ZSH_CORE}/aliases"
export CORE_BIN="${ZSH_CORE}/bin"
export CORE_COMPLETE="${ZSH_CORE}/complete.d"
export CORE_COMPUTE="${ZSH_CORE}/compute-path"
export CORE_ENV="${ZSH_CORE}/env"
export CORE_FUNCTIONS="${ZSH_CORE}/functions"
export CORE_LAYOUTS="${ZSH_CORE}/layouts"
export CORE_OPTIONS="${ZSH_CORE}/options"
export CORE_PATHS="${ZSH_CORE}/paths"
export CORE_TEMP="${ZSH_CORE}/temp"

# Multimedia directory (if it exists)
if [[ -d "${AHMYZSH}/multimedia" ]]; then
  export MY_MULTIMEDIA="${AHMYZSH}/multimedia"
  export MY_SOUNDS="${MY_MULTIMEDIA}/sounds"
fi

# Tmux configuration (if it exists)
[[ -d "${AHMYZSH}/tmux" ]] && export CUSTOM_TMUX="${AHMYZSH}/tmux"
