########
## GNU GPL v2.0
## https://github.com/grml/zsh-lovers
########

# from man pages ZSH-LOVERS(1)
alias ZSH_LOVERS="man ZSH-LOVERS"
# =============

# NAME
# ----
# zsh-lovers - tips, tricks and examples for the Z shell

alias -s tex=vim
alias -s html=w3m
alias -s org=w3m
alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'
alias -g CA="2>&1 | cat -A"
alias -g Cx='| wc -l'
alias -g Dx="DISPLAY=:0.0"
alias -g DN=/dev/null
alias -g ED="export DISPLAY=:0.0"
alias -g EG='|& egrep'
alias -g EH='|& head'
alias -g EL='|& less'
alias -g ELS='|& less -S'
alias -g ETL='|& tail -20'
alias -g ET='|& tail'
alias -g Fx=' | fmt -'
alias -g Gx='| egrep'
alias -g Hx='| head'
alias -g HL='|& head -20'
alias -g Sk="*~(*.bz2|*.gz|*.tgz|*.zip|*.z)"
alias -g LL="2>&1 | less"
alias -g Lx="| less"
alias -g LS='| less -S'
alias -g MM='| most'
alias -g Mx='| more'
alias -g NE="2> /dev/null"
alias -g NS='| sort -n'
alias -g NUL="> /dev/null 2>&1"
alias -g PIPE='|'
alias -g Rx=' > /c/aaa/tee.txt '
alias -g RNS='| sort -nr'
alias -g Sx='| sort'
alias -g TL='| tail -20'
alias -g Tx='| tail'
alias -g US='| sort -u'
alias -g VM=/var/log/messages
alias -g X0G='| xargs -0 egrep'
alias -g X0='| xargs -0'
alias -g XG='| xargs egrep'
alias -g Xx='| xargs'

# EXAMPLES
# --------
# Available subsections are *Aliases*, *Completion*, *Unsorted/Misc examples*,
# *(Recursive) Globbing - Examples*, *Modifiers usage*, *Redirection-Examples*,
# *ZMV-Examples* and *Module-Examples*.

# ALIASES
# ~~~~~~~
# Suffix aliases are supported in zsh since version 4.2.0. Some examples:
# -----------------
# !! alias -s tex=vim
# !! alias -s html=w3m
# !! alias -s org=w3m
# -----------------
# Now pressing the return-key after entering 'foobar.tex' starts vim with
# foobar.tex. Calling an html-file runs browser w3m. 'www.zsh.org' and pressing
# enter starts w3m with argument www.zsh.org. +
# Global aliases can be used anywhere in the command line. Example:
# ----------------------
# $ alias -g C='| wc -l'
# $ grep alias ~/.zsh/* C
# 443
# ----------------------
# Some more or less useful global aliases (choose whether they are useful or not
# for you on your own):

# ----------------------------------------------------------------------------
# COMPLETION
# ~~~~~~~~~~
# See also man 1 zshcompctl zshcompsys zshcompwid. zshcompctl is the old
# style of zsh programmable completion, zshcompsys is the new completion
# system, zshcompwid are the zsh completion widgets.

# Some functions, like _apt and _dpkg, are very slow. You can use a cache
# in order to proxy the list of  results  (like  the  list  of  available
# debian packages) Use a cache:
# ----------------------------------------------------------------------------
# !!
zstyle ':completion:*' use-cache on
# !!
# ~/.zsh/cache
# ~/.cache/ahmyzsh
zstyle ':completion:*' cache-path ${AHMYZSH_CACHE}
# ----------------------------------------------------------------------------

# Prevent CVS files/directories from being completed:
# ----------------------------------------------------------------------------
# !! zstyle ':completion:*:(all-|)files' ignored-patterns '(|*/)CVS'
# !! zstyle ':completion:*:cd:*' ignored-patterns '(*/)#CVS'
# ----------------------------------------------------------------------------

# Fuzzy matching of completions for when you mistype them:
# ----------------------------------------------------------------------------
# !!
zstyle ':completion:*' completer _complete _match _approximate
# !!
zstyle ':completion:*:match:*' original only
# !!
zstyle ':completion:*:approximate:*' max-errors 1 numeric
# ----------------------------------------------------------------------------

# And  if  you  want  the  number  of  errors  allowed by _approximate to
# increase with the length of what you have typed so far:
# ----------------------------------------------------------------------------
# !! #
zstyle -e ':completion:*:approximate:*' \
  max-errors 'reply=($((($#PREFIX+$#SUFFIX)/3))numeric)'

# ----------------------------------------------------------------------------

# Ignore completion functions for commands you don't have:
# ----------------------------------------------------------------------------
# !! zstyle ':completion:*:functions' ignored-patterns '_*'
# ----------------------------------------------------------------------------

# With helper functions like:
# ----------------------------------------------------------------------------
xdvi() {
  command xdvi ${*:-*.dvi(om[1])}
}
# ----------------------------------------------------------------------------

# you can avoid having to complete at all in many cases, but if  you  do,
# you  might want to fall into menu selection immediately and to have the
# words sorted by time:
# ----------------------------------------------------------------------------
# !!
zstyle ':completion:*:*:xdvi:*' menu yes select
# !!
zstyle ':completion:*:*:xdvi:*' file-sort time
# ----------------------------------------------------------------------------

# Completing process IDs with menu selection:
# ----------------------------------------------------------------------------
# !!
zstyle ':completion:*:*:kill:*' menu yes select
# !!
zstyle ':completion:*:kill:*' force-list always
# ----------------------------------------------------------------------------

# If you end up using a directory  as  argument,  this  will  remove  the
# trailing slash (useful in ln)
# ----------------------------------------------------------------------------
# !!
zstyle ':completion:*' squeeze-slashes true
# ----------------------------------------------------------------------------

# cd will never select the parent directory (e.g.: cd ../<TAB>):
# ----------------------------------------------------------------------------
# !!
zstyle ':completion:*:cd:*' ignore-parents parent pwd
# ----------------------------------------------------------------------------

# Another method for 'quick change directories'.
# Add this to your ~/.zshrc, then just enter
# ``cd ..../dir''
# ----------------------------------------------------------------------------
rationalise-dot() {
  if [[ $LBUFFER = *.. ]]; then
    LBUFFER+=/..
  else
    LBUFFER+=.
  fi
}
# !! zle -N rationalise-dot
# !! bindkey . rationalise-dot
# ----------------------------------------------------------------------------
# !! alias dnf="noglob dnf"

# COPYRIGHT
# ---------
# Copyright (C) Michael Prokop, Christian Schneider and Matthias
# Kopfermann.

########
## https://github.com/grml/zsh-lovers
## under GNU GPL v2.0
########
