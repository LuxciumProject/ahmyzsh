echo -n "\u001b[0m\u001b[34m# LOADING... (!!  USER   .zshenv)\u001b[31;1m\n"
GITHUB_TOKEN="${MAC_BOOK_PRO_ENV_REPO_GIST_HOOK_NOTIFICATIONS}"
# END in: ~/.zshenv ->
alias zshenv="code ~/.zshenv"

export LOCALPORT=80
export PORT=80

export TERM="xterm-256color"
export CLICOLOR='1'
export LSCOLORS='GxFxCxDxBxDgedabagacad'
export GPG_TT=(tty)

export NPM_CHECK_INSTALLER='pnpm'
export NODE_DEPLOYEMENT_ENV='false'
export NODE_ENV='development'
export NODE_LOCAL_ENV='true'
export NODE_REMOTE_ENV='true'
export NODE_TEST_ENV='false'
export SERVER='dev-server'

source "${ZSH_BIN}/.zshenv"
