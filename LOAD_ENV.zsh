echo "${BEGIN_LOADING} ${0} ${END_LOADING}"
################################################################################
##                                                                            ##
##              !!! PLEASE USE CAUTION WHEN USING THIS FILE !!!               ##
##                                                                            ##
##  THIS FILE CANNOT BE USED AS IS YOU MAY HAVE TO CUSTOMISE IT TO USE IT.    ##
##  Even if this file is shared on my public git hub it has not been designed ##
##  for public use. It was not created with the idea that someone else would  ##
##  be using it. The files in this repository have been created for my usage  ##
##  only. They are available so you can see how I have customized my system.  ##
##  I decided to put them in the public space so anyone can download them     ##
##  and edit them. I hope this can inspire someone or serve as a reference.   ##
##                                                                            ##
#+           Copyright (c) 2019-present Benjamin Vincent Kasapoglu            ##
#&                                                                            ##
#&     This Source Code Form is subject to the terms of the Mozilla Public    ##
#&     License, v. 2.0. If a copy of the MPL was not distributed with this    ##
#&           file, You can obtain one at http://mozilla.org/MPL/2.0/.         ##
#&                                                                            ##
##     The above copyright notice and this license notice shall be included   ##
##           in all copies or substantial portions of the Software.           ##
##                                                                            ##
################################################################################
# Path aliases  for diferent part of this Z shell system implementation
if [ "$LOAD_LATER" != 'true' ]; then
    export AHMYZSH="${HOME}/ahmyzsh"
    source "${AHMYZSH}/PATHS.zsh"

    export NODE_DEPLOYEMENT_ENV='false'
    export NODE_ENV='development'
    export NODE_LOCAL_ENV='true'
    export NODE_NO_READLINE=1
    export NODE_REMOTE_ENV='true'
    export NODE_REPL_HISTORY_SIZE=10000
    export NODE_REPL_HISTORY="${HOME}/.node_repl_history"
    export NODE_REPL_MODE='sloppy'
    export NODE_TEST_ENV='false'
    export NPM_CHECK_INSTALLER='pnpm'
    export PYTHONSTARTUP="${HOME}/.pythonrc"

    export GITHUB_TOKEN="${MAC_BOOK_PRO_ENV_REPO_GIST_HOOK_NOTIFICATIONS}"
    export GITHUB_PASSWORD="${GITHUB_TOKEN}"
    export GITHUB_USER='Luxcium'

    export LOCALPORT=80
    export PORT=80
    export SERVER='dev-server'
    {
        {
            export PWRLN_BINDINGS="${POWERLINE}/powerline/bindings"
            {
                export PWRLN_TMUX_CONF="${PWRLN_BINDINGS}/tmux/powerline.conf"
                export PWRLN_ZSH_CONF="${PWRLN_BINDINGS}/zsh/powerline.zsh"

            }

            {
                export NODE_REPL_SCRIPT="${NODE_REPL}/repl.js"
                export TMUX_BIN="${CUSTOM_TMUX}/bin"
                export TMUX_CONFIGS="${CUSTOM_TMUX}/configs"
                export PATH_TMUX_CONFIG="${CUSTOM_TMUX}"
                {
                    export PATH_TMUX_BIN="${PATH_TMUX_CONFIG}/bin"
                    export TMUX_COMMON_CONF="${PATH_TMUX_CONFIG}/common.tmux.config"
                    export TMUX_COMMON_THEME="${PATH_TMUX_CONFIG}/theme.tmux.config"
                }
            }

            {
                export MY_ALIASES="${ZSH_SOURCES}/aliases.sh"
                export SOURCE_ALL="${ZSH_SOURCES}/.source_all.sh"
                export SOURCE_FUNCTIONS="${ZSH_SOURCES}/.source_functions.zsh"
                export ZSH_FLAGS="${ZSH_SOURCES}/flags"
                export ZSH_LUXCIUM="${ZSH_SOURCES}"
                export ZSH_COMPLETION="${ZSH_SOURCES}/completion"
                {
                    export ZSH_SRC="${ZSH_LUXCIUM}"
                    {
                        export PATH_ZSH_FUNCTIONS="${ZSH_LUXCIUM}"
                        export PATH_COMPLETION="${ZSH_LUXCIUM}/completion"
                        export ZSH_FLAGS_VALUES="${ZSH_LUXCIUM}/flags/values"
                    }
                }
            }

        }

    }

    export PATH_INSDR_CODE_EXT="${HOME}/.vscode-insiders/extensions"
    export PATH_LXIO_PRJ="${HOME}/Developer/LuxciumProject"

    export PATH_LXIO="${PATH_LXIO_PRJ}/luxcium.io"
    export PATH_OH_MY_ZSH="${ZSH}"
    export PATH_QUESTRADE="${PATH_LXIO_PRJ}/questrade-ts"
    export PATH_IEXCLOUD_API_WRAPPER="${PATH_LXIO_PRJ}/iexcloud-api-wrapper"
    export PATH_IEX_API="${PATH_LXIO_PRJ}/iex-luxcium-api"

    # /Users/neb_401/.vscode-insiders/extensions/dev-pop-n-lock-theme-vscode
    export DEV_POPNLOCK="${PATH_INSDR_CODE_EXT}/dev-pop-n-lock-theme-vscode"

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

##!!0###########################################################################
##!!                                                                          ##
#+!!         Copyright (c) 2019-present Benjamin Vincent Kasapoglu            ##
#&!!                                                                          ##
#&!!   This Source Code Form is subject to the terms of the Mozilla Public    ##
#&!!   License, v. 2.0. If a copy of the MPL was not distributed with this    ##
#&!!         file, You can obtain one at http://mozilla.org/MPL/2.0/.         ##
#&!!                                                                          ##
##!!   The above copyright notice and this license notice shall be included   ##
##!!         in all copies or substantial portions of the Software.           ##
##!!                                                                          ##
##!!          ------------------------------------------------------          ##
##!!                                                                          ##
##!!    Disclaimer of Warranty                                                ##
##!!   -------------------------                                              ##
##!!                                                                          ##
##!!   Covered Software is provided under this License on an "as is"          ##
##!!   basis, without warranty of any kind, either expressed, implied, or     ##
##!!   statutory, including, without limitation, warranties that the          ##
##!!   Covered Software is free of defects, merchantable, fit for a           ##
##!!   particular purpose or non-infringing. The entire risk as to the        ##
##!!   quality and performance of the Covered Software is with You.           ##
##!!   Should any Covered Software prove defective in any respect, You        ##
##!!   (not any Contributor) assume the cost of any necessary servicing,      ##
##!!   repair, or correction. This disclaimer of warranty constitutes an      ##
##!!   essential part of this License. No use of any Covered Software is      ##
##!!   authorized under this License except under this disclaimer.            ##
##!!                                                                          ##
##!!0###########################################################################
