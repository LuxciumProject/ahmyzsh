export EDITOR="nano"
IS_ZSH_="$(ps -o comm= -p $$ | grep 'zsh')"
IS_BASH_="$(ps -o comm= -p $$ | grep 'bash')"

alias iszsh="([[ -n ${IS_ZSH_:-''} ]] && (echo 'zsh'; exit 0) || (echo 'not zsh'; exit 1))"
alias isbash="([[ -n ${IS_BASH_:-''} ]] && (echo 'bash'; exit 0) || (echo 'not bash'; exit 1))"

alias iszsh_="([[ -n ${IS_ZSH_:-''} ]] && (exit 0) || (exit 1))"
alias isbash_="([[ -n ${IS_BASH_:-''} ]] && (exit 0) || (exit 1))"
