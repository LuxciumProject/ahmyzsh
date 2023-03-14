#!/bin/bash

alias lxqtx='env tmux -uv -f ${TMUX_CONFIGS}/questrade.tmux.conf new-session -A -s questrade-ts -c ${PATH_LXIO_PRJ}/questrade-ts'
alias txio='env tmux -uv -f ${TMUX_CONFIGS}/luxcium.tmux.conf new-session -A -s luxcium-io -c ${PATH_LXIO_PRJ}/luxcium.io'
alias nx='tmux neww'
alias dx='tmux detach -a; mxd'
alias k='_p9k_dump_instant_prompt;notmytty; tmux kill-session -a; killall tmux'
alias mylab="tmux new-window -d -c '/Users/neb_401/JupyterLab' -n 'Jupyter Lab' 'env jupyter lab'"
alias jlab="tmux new-window -d -n 'Jupyter Lab' 'env jupyter lab'"
alias quit='tmux detach'
alias lximux='tmux-luxcium'
alias lxikill='tmux kill-session -t $LXI_SESSION'
alias cnftmx='atom ~/.tmux.conf'
# alias tmuxlxic='mycode ${PATH_LXIO_PRJ}/luxcium.io && cd ${PATH_LXIO_PRJ}/luxcium.io'
# alias mxdef='tmux -uv -f ${TMUX_CONFIGS}/common.tmux.conf new-session -A -s luxcium-io -c ${PATH_LXIO_PRJ}/luxcium.io'
# alias dx='tmux detach'
# alias lxic='tmuxlxic; tmux new-session -A -s luxcium-io;'

# alias tmux='tmux -f ~/.tmux.conf'
