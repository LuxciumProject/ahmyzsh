# zsh/modules/base-options.zsh
# Independent interactive defaults; no framework or external command dependency.

setopt interactive_comments
setopt no_beep
setopt auto_cd
setopt auto_pushd
setopt pushd_ignore_dups
setopt pushd_silent

typeset -gU path PATH
typeset -gU fpath FPATH
typeset -gU cdpath CDPATH
typeset -gU manpath MANPATH
