function tmux_questrade() {
    tmux new -s questrade -d
    tmux rename-window -t questrade code
    tmux send-keys -t questrade 'code' C-m

    tmux new-window -t questrade
    tmux rename-window -t questrade server
    # tmux send-keys -t questrade './bin/rails s' C-m
    tmux split-window -v -t questrade
    # tmux send-keys -t questrade './bin/sidekiq' C-m
    tmux select-window -t questrade:1
    tmux attach -t questrade
    tmux source "$TMUX_CONFIGS"/common.tmux.conf
    # tmux source "$TMUX_CONFIGS"/theme.tmux.conf

}
