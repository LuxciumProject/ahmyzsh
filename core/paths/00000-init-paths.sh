export CUSTOM_ZSH="${AHMYZSH}/custom-zsh"
{
  export ZSH_BIN="${CUSTOM_ZSH}/bin"
  {
    export ZSH_BIN_ETC="${ZSH_BIN}/etc"
  }

  export ZSH_SOURCES="${CUSTOM_ZSH}/sources"
  {
    export ZSH_COMPLETION="${ZSH_SOURCES}/completion"
    export ZSH_COMPUTE="${ZSH_SOURCES}/compute"
    export ZSH_FLAGS="${ZSH_SOURCES}/flags"
    export ZSH_FUNCTIONS_FOLDER="${ZSH_SOURCES}/functions"
    export ZSH_LAYOUTS="${ZSH_SOURCES}/layouts"
    export ZSH_LUXCIUM="${ZSH_SOURCES}"
    {
      export PATH_ZSH_FUNCTIONS="${ZSH_LUXCIUM}"
      export ZSH_FLAGS_VALUES="${ZSH_LUXCIUM}/flags/values"
    }

  }
}
export OHMYZSH="${AHMYZSH}/ohmyzsh"
{
  export ZSH="${OHMYZSH}"
}
export POWERLEVEL10K="${AHMYZSH}/powerlevel10k"
export POWERLINE="${AHMYZSH}/powerline"
{
  export POWERLINE_BINDINGS="${POWERLINE}/powerline/bindings"
  export PWRLN_BINDINGS="${POWERLINE}/powerline/bindings"
}

export AHMYZSH_CORE="${AHMYZSH}/core"
{
  export CORE_BIN="${AHMYZSH_CORE}/bin"
}

export AHMYZSH_PLUGINS="${AHMYZSH}/plugins"
{
  export PLUGINS_BIN="${AHMYZSH_PLUGINS}/bin"
}
export AHMYZSH_BIN="${AHMYZSH}/bin"
