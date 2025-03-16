#!/bin/bash


# Alias to start a new tmux session named 'questrade-ts' using a specific configuration file for Questrade.
alias lxqtx='env tmux -uv -f ${TMUX_CONFIGS}/questrade.tmux.conf new-session -A -s questrade-ts -c ${PATH_LXIO_PRJ}/questrade-ts'

# Alias to start a new tmux session named 'luxcium-io' using a specific configuration file for Luxcium.
alias txio='env tmux -uv -f ${TMUX_CONFIGS}/luxcium.tmux.conf new-session -A -s luxcium-io -c ${PATH_LXIO_PRJ}/luxcium.io'

# Alias to create a new window in the current tmux session.
alias nx='tmux neww'

# Alias to detach from all tmux sessions and then run the 'mxd' command.
alias dx='tmux detach -a; mxd'

# Alias to kill all tmux sessions and processes, and run '_p9k_dump_instant_prompt' and 'notmytty' commands.
alias k='_p9k_dump_instant_prompt;notmytty; tmux kill-session -a; killall tmux'

# Alias to create a new detached tmux window named 'Jupyter Lab' in the specified directory and run 'jupyter lab'.
alias mylab="tmux new-window -d -c '/Users/neb_401/JupyterLab' -n 'Jupyter Lab' 'env jupyter lab'"

# Alias to create a new detached tmux window named 'Jupyter Lab' and run 'jupyter lab'.
alias jlab="tmux new-window -d -n 'Jupyter Lab' 'env jupyter lab'"

# Alias to detach from the current tmux session.
alias quit='tmux detach'

# Alias to run the 'tmux-luxcium' command.
alias lximux='tmux-luxcium'

# Alias to kill a specific tmux session identified by the environment variable $LXI_SESSION.
alias lxikill='tmux kill-session -t $LXI_SESSION'

# Alias to open the tmux configuration file in the Atom editor.
alias cnftmx='atom ~/.tmux.conf'
# alias tmuxlxic='mycode ${PATH_LXIO_PRJ}/luxcium.io && cd ${PATH_LXIO_PRJ}/luxcium.io'
# alias mxdef='tmux -uv -f ${TMUX_CONFIGS}/common.tmux.conf new-session -A -s luxcium-io -c ${PATH_LXIO_PRJ}/luxcium.io'
# alias dx='tmux detach'
# alias lxic='tmuxlxic; tmux new-session -A -s luxcium-io;'

# alias tmux='tmux -f ~/.tmux.conf'
