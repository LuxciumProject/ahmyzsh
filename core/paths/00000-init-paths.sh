#!/usr/bin/env bash

export AHMYZSH=${AHMYZSH:="/ahmyzsh"}
export AHMYZSH_CACHE=${AHMYZSH_CACHE:="${HOME}/.cache/ahmyzsh"}
export CACHED_PATH=${CACHED_PATH:="${AHMYZSH_CACHE}/path.env"}
export MAIN_BOOTSTRAP=${MAIN_BOOTSTRAP:="${AHMYZSH}/MAIN.sh"}

export OHMYZSH="${AHMYZSH}/ohmyzsh"
{
  export ZSH="${OHMYZSH}"
}
export POWERLEVEL10K="${AHMYZSH}/powerlevel10k"
export ZSH_PLUGINS="${AHMYZSH}/plugins"
export ZSH_THEMES="${AHMYZSH}/themes"

export AHMYZSH_CORE="${AHMYZSH}/core"
export MYZSH_CORE="${AHMYZSH_CORE}"
export ZSH_CORE="${AHMYZSH_CORE}"

{
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
}
export DESTINATION_PATH="/media/luxcium/100 GIO/downloads"
export MY_MULTIMEDIA="${AHMYZSH}/multimedia"
{
  export MY_SOUNDS="${MY_MULTIMEDIA}/sounds"
}

export CUSTOM_TMUX="${AHMYZSH}/tmux"
# . "${CUSTOM_TMUX}/paths.sh"
# {
#   # export ZSH_BIN="${CUSTOM_ZSH}/bin"
#   {
#     # export ZSH_BIN_ETC="${ZSH_BIN}/etc"
#   }

#   # export ZSH_SOURCES="${CUSTOM_ZSH}/sources"
#   {
#     # export ZSH_COMPLETION="${AHMYZSH_CORE}/complete.d"
#     # export ZSH_FLAGS="${ZSH_SOURCES}/flags"
#     # export ZSH_LAYOUTS="${ZSH_SOURCES}/layouts"
#     # export ZSH_LUXCIUM="${ZSH_SOURCES}"
#     {
#       # export PATH_ZSH_FUNCTIONS="${ZSH_LUXCIUM}"
#       # export ZSH_FLAGS_VALUES="${ZSH_LUXCIUM}/flags/values"
#     }

#   }
# }

# # /home/luxcium/ahmyzsh/core

# # export CORE_FUNCTIONS="${AHMYZSH_CORE}/functions.1"
# # export CORE_FUNCTIONS="${AHMYZSH_CORE}/functions.2"

# {
# export PLUGINS_BIN="${ZSH_PLUGINS}/bin"
# }

# ohmyzsh/
# plugins/
# powerlevel10k/
# themes/

# .git/
# .vscode/
# archives/
# core/
# crt-profiles/
# node_modules/
# templates/
