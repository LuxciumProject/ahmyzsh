init_paths() {
    if [ "$PARENT_ENV_LOADED" != 'true' ]; then
        export CACHE_FOLDER="${HOME}/.cache/p10k-${USER}"
        export AHMYZSH="${HOME}/ahmyzsh"
        # export NODE_REPL="${AHMYZSH}/node-repl"
        export POWERLEVEL10K="${AHMYZSH}/powerlevel10k"
        # export PYTHON_REPL="${AHMYZSH}/python-repl"
        export CUSTOM_ZSH="${AHMYZSH}/custom-zsh"
        {
            export ZSH_SOURCES="${CUSTOM_ZSH}/sources"
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
                    export ZSH_LAYOUTS="${ZSH_SOURCES}/layouts"
                }
            }
            export OHMYZSH="${AHMYZSH}/ohmyzsh"
            {
                export ZSH="${OHMYZSH}"
            }
        }
    fi
}
