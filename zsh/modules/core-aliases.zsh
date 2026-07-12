# zsh/modules/core-aliases.zsh
# Deliberately tiny, side-effect-light vocabulary; loaded after OMZ to win conflicts.

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias g='git'
alias gst='git status --short --branch'
alias reload-zsh='ahm reload'

if [[ $OSTYPE == linux* ]]; then
  alias ls='ls --color=auto'
  alias ll='ls -lah --color=auto'
  alias grep='grep --color=auto'
else
  alias ll='ls -lah'
fi
