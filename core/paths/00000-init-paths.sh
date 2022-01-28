export AHMYZSH=${AHMYZSH:="${HOME}/ahmyzsh"}
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
{
  export CORE_ALIASES="${AHMYZSH_CORE}/aliases"
  export CORE_BIN="${AHMYZSH_CORE}/bin"
  export CORE_COMPLETE="${AHMYZSH_CORE}/complete.d"
  export CORE_COMPUTE="${AHMYZSH_CORE}/compute-path"
  export CORE_ENV="${AHMYZSH_CORE}/env"
  export CORE_FUNCTIONS="${AHMYZSH_CORE}/functions"
  export CORE_LAYOUTS="${AHMYZSH_CORE}/layouts"
  export CORE_OPTIONS="${AHMYZSH_CORE}/options"
  export CORE_PATHS="${AHMYZSH_CORE}/paths"
  export CORE_TEMP="${AHMYZSH_CORE}/temp"
}

export MY_MULTIMEDIA="${AHMYZSH}/multimedia"
{
  export MY_SOUNDS="${MY_MULTIMEDIA}/sounds"
}

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

{
  # export PLUGINS_BIN="${ZSH_PLUGINS}/bin"
}

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
