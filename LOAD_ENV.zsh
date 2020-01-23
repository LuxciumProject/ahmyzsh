echo "${BEGIN_LOADING} ${0} ${END_LOADING}"
# echo -n "\u001b[0m\u001b[34m# LOADING... $0 \u001b[31;1m\n"

# Path aliases  for diferent part of this Z shell system implementation

# export ZSH="${HOME}/.oh-my-zsh"
# export ZSH_CUSTOM="${ZSH}/custom"
# export ZSH_LUXCIUM="${ZSH_CUSTOM}/luxcium"
# export ZSH_BIN="${ZSH_LUXCIUM}/bin"
# export BASH_BIN="${ZSH_BIN}/bash"

export AHMYZSH="${HOME}/ahmyzsh"
{
    export POWERLINE="${AHMYZSH}/powerline"
    export POWERLEVEL10K="${AHMYZSH}/powerlevel10k"
    export NODE_REPL="${AHMYZSH}/node-repl"
    export PYTHON_REPL="${AHMYZSH}/python-repl"
    export OHMYZSH="${AHMYZSH}/ohmyzsh"
    {
        export ZSH="${OHMYZSH}"
    }

    export CUSTOM_TMUX="${AHMYZSH}/custom-tmux"
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
            export ZSH_LUXCIUM="${ZSH_SOURCES}"
            {
                export ZSH_SRC="${ZSH_LUXCIUM}/sources"
            }
        }

    }

}

if [[ ! -o norcs ]]; then
#  ... <commands to run if NO_RCS is not set,
#       such as setting options> ...
fi

# source "${ZSH_LUXCIUM}/.source_all.sh"
# # source /Users/neb_401/.oh-my-zsh/custom/luxcium/bin/all.profile.sh

# export /Users/neb_401/.oh-my-zsh/custom/luxcium/bin/etc/zshenv.zsh
# |                |Interactive|Interactive|Script|
# |                |login      |non-login  |      |
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

# /bin/bash ~ The bash executable
# /etc/profile ~ The systemwide initialization file, executed for login shells
# ~/.bash_profile ~ The personal initialization file, executed for login shells
# ~/.bashrc ~ The individual per-interactive-shell startup file
# ~/.bash_logout ~ The individual login shell cleanup file, executed when a login shell exits
# ~/.inputrc ~ Individual readline initialization file
