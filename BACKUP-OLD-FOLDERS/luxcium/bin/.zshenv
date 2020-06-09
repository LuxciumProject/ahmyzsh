# START in: ~/.zshenv -> code ~/.zshenv
export ZSH="${HOME}/.oh-my-zsh"
export ZSH_CUSTOM="${ZSH}/custom"
export ZSH_LUXCIUM="${ZSH_CUSTOM}/luxcium"
export ZSH_BIN="${ZSH_LUXCIUM}/bin"
# source "${ZSH_BIN}/.zshenv"
# END in: ~/.zshenv ->
alias zshenv="atom ~/.zshenv"
## ENVIRONEMENT VARIABLES :
export MONGODB_DB_DEFAULT_NAME_TEST='LuxciumTestDB_DELETABLE'
export MONGODB_DB_DEFAULT_NAME='LocalLuxciumDevDB'
export MONGODB_URI_DEV='mongodb://localhost:27017'
export MONGODB_URI_PRODUCTION='mongodb://localhost:27017'
export MONGODB_URI='mongodb://localhost:27017'

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

source "${ZSH_LUXCIUM}/.source_all.sh"
source_all # Includes load_paths, load_layouts & load_aliases

# +----------------+-----------+-----------+------+
# |                |Interactive|Interactive|Script|
# |                |login      |non-login  |      |
# +----------------+-----------+-----------+------+
# |/etc/zshenv     |    A      |    A      |  A   |
# +----------------+-----------+-----------+------+
# |~/.zshenv       |    B      |    B      |  B   |
# +----------------+-----------+-----------+------+
# |/etc/zprofile   |    C      |           |      |
# +----------------+-----------+-----------+------+
# |~/.zprofile     |    D      |           |      |
# +----------------+-----------+-----------+------+
# |/etc/zshrc      |    E      |    C      |      |
# +----------------+-----------+-----------+------+
# |~/.zshrc        |    F      |    D      |      |
# +----------------+-----------+-----------+------+
# |/etc/zlogin     |    G      |           |      |
# +----------------+-----------+-----------+------+
# |~/.zlogin       |    H      |           |      |
# +----------------+-----------+-----------+------+
# |                |           |           |      |
# +----------------+-----------+-----------+------+
# |                |           |           |      |
# +----------------+-----------+-----------+------+
# |~/.zlogout      |    I      |           |      |
# +----------------+-----------+-----------+------+
# |/etc/zlogout    |    J      |           |      |
# +----------------+-----------+-----------+------+
# put stuff in ~/.zshrc, which is always executed.
# sudo code /etc/zshenv ;sudo code ~/.zshenv ;sudo code /etc/zprofile ;sudo code ~/.zprofile ;sudo code /etc/zshrc ;sudo code ~/.zshrc ;sudo code /etc/zlogin ;sudo code ~/.zlogin ;sudo code ~/.zlogout ;sudo code /etc/zlogout
