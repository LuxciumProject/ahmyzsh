#!/bin/bash

# Total lines: 64

#######################
## VSCODE ZSH PLUGIN ##
#######################
# eslint-config-airbnb-base@latest eslint@latest eslint-config-prettier@latest eslint-plugin-import@latest eslint-plugin-unicorn@latest @typescript-eslint/parser@latest @typescript-eslint/eslint-plugin

alias sample-dirs-folders='bash <(curl -s https://gist.githubusercontent.com/Luxcium/7fba257aa83ef47ecb8e1b811e2d7cf2/raw/527e7d10a519ebbc876426461f07c1533fbe7292/dirs-material-icon-theme-PKief-4.5.0.sh)'

alias newvsportable='bash <(curl -s   https://gist.githubusercontent.com/Luxcium/7357d34622c148f6041842321f315d7a/raw/a758b82e6818b9b9b664b210228ea93f9314c1b4/luxcium-vscode-portable.sh)'
alias vsportablenew='newvsportable'
alias portablevsnew='newvsportable'
alias portablevs='newvsportable'

# alias ='/Users/neb_401/Developer/VSCode-Instances/clean-16-fev-2020/VisualStudioCode.app'
# author: https://github.com/MarsiBarsi
# Use main Visual Studio Code version by default
: "${VSCODE:=code}"

# alias vsc="$VSCODE ."
alias vsca='${VSCODE} --add'
alias vscd='${VSCODE} --diff'
alias vscg='${VSCODE} --goto'
alias vscn='${VSCODE} --new-window'
alias vscr='${VSCODE} --reuse-window'
alias vscw='${VSCODE} --wait'
alias vscu='${VSCODE} --user-data-dir'

alias vsced='${VSCODE} --extensions-dir'
alias vscie='${VSCODE} --install-extension'
alias vscue='${VSCODE} --uninstall-extension'

alias vscv='${VSCODE} --verbose'
alias vscl='${VSCODE} --log'
alias vscde='${VSCODE} --disable-extensions'

##########################
## INSIDERS CODE PLUGIN ##
##########################
# author: https://github.com/MarsiBarsi
# Use INSIDER Visual Studio Code

: "${ISCODE:=insiders}"

alias ivsc='${ISCODE} .'
alias ivsca='${ISCODE} --add'
alias ivscd='${ISCODE} --diff'
alias ivscg='${ISCODE} --goto'
alias ivscn='${ISCODE} --new-window'
alias ivscr='${ISCODE} --reuse-window'
alias ivscw='${ISCODE} --wait'
alias ivscu='${ISCODE} --user-data-dir'

alias ivsced='${ISCODE} --extensions-dir'
alias ivscie='${ISCODE} --install-extension'
alias ivscue='${ISCODE} --uninstall-extension'

alias ivscv='${ISCODE} --verbose'
alias ivscl='${ISCODE} --log'
alias ivscde='${ISCODE} --disable-extensions'
