echo "${BEGIN_LOADING} ${0} ${END_LOADING}"
# Path aliases  for diferent part of this Z shell system implementation

ENV_LOADED='false'
if [ "$LOAD_LATER" != 'true' ]; then

    export AHMYZSH="${HOME}/ahmyzsh"
    {
        export POWERLINE="${AHMYZSH}/powerline"
        {
            export PWRLN_BINDINGS="${POWERLINE}/powerline/bindings"
            {
                export PWRLN_TMUX_CONF="${PWRLN_BINDINGS}/tmux/powerline.conf"
                export PWRLN_ZSH_CONF="${PWRLN_BINDINGS}/zsh/powerline.zsh"

            }
        }
        export POWERLEVEL10K="${AHMYZSH}/powerlevel10k"
        export NODE_REPL="${AHMYZSH}/node-repl"
        {
            export NODE_REPL_SCRIPT="${NODE_REPL}/repl.js"
        }
        export PYTHON_REPL="${AHMYZSH}/python-repl"
        export OHMYZSH="${AHMYZSH}/ohmyzsh"
        {
            export ZSH="${OHMYZSH}"
        }

        export CUSTOM_TMUX="${AHMYZSH}/custom-tmux"
        {
            export TMUX_BIN="${CUSTOM_TMUX}/bin"
            export TMUX_CONFIGS="${CUSTOM_TMUX}/configs"
        }
        export CUSTOM_ZSH="${AHMYZSH}/custom-zsh"
        {
            export MY_ALIASES="${CUSTOM_ZSH}/.aliases.sh"
            export ZSH_CUSTOM="${CUSTOM_ZSH}"
            export ZSH_BIN="${CUSTOM_ZSH}/bin"
            {
                export ZSH_BIN_ETC="${ZSH_BIN}/etc"
                export BASH_BIN="${ZSH_BIN}/bash"
            }
            export ZSH_SOURCES="${CUSTOM_ZSH}/sources"
            {
                export SOURCE_ALL="${ZSH_SOURCES}/.source_all.sh"
                export ZSH_FLAGS="${ZSH_SOURCES}/flags"
                export ZSH_LUXCIUM="${ZSH_SOURCES}"
                export ZSH_COMPLETION="${ZSH_SOURCES}/completion"
                {
                    export ZSH_SRC="${ZSH_LUXCIUM}"
                }
            }

        }

    }
fi
if [[ ! -o norcs ]]; then
#  ... <commands to run if NO_RCS is not set,
#       such as setting options> ...
fi

# |----------------|-----------|-----------|------|
# |                |Interactive|Interactive|Script|
# |----------------|-----------|-----------|------|
# |                |login      |non-login  |      |
# |----------------|-----------|-----------|------|
# |/etc/zshenv     |    A      |    A      |  A   |
# |~/.zshenv       |    B      |    B      |  B   |
# |/etc/zprofile   |    C      |           |      |
# |~/.zprofile     |    D      |           |      |
# |/etc/zshrc      |    E      |    C      |      |
# |~/.zshrc        |    F      |    D      |      | ***
# |/etc/zlogin     |    G      |           |      |
# |~/.zlogin       |    H      |           |      |
# |                |           |           |      |
# |                |           |           |      |
# |~/.zlogout      |    I      |           |      |
# |/etc/zlogout    |    J      |           |      |
# |----------------|-----------|-----------|------|

# /bin/bash ~ The bash executable
# /etc/profile ~ The systemwide initialization file, executed for login shells
# ~/.bash_profile ~ The personal initialization file, executed for login shells
# ~/.bashrc ~ The individual per-interactive-shell startup file
# ~/.bash_logout ~ The individual login shell cleanup file, executed when a login shell exits
# ~/.inputrc ~ Individual readline initialization file
