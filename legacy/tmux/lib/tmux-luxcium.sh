function tmux_luxcium() {
    TMUX_SESSION='luxcium-io'
    TMUX_WINDOW_0='tail_log'
    PATH_TMUX_SESSION="$PATH_LXIO"
    TMUX_SESSION=$TMUX_SESSION

    tmux has-session -t $TMUX_SESSION 2>/dev/null
    if [ $? != 0 ]; then
        tmux-new

        tmux source "$TMUX_CONFIGS"/common.tmux.conf
        # tmux source "$TMUX_CONFIGS"/theme.tmux.conf

        tmux split-window -h -t $TMUX_SESSION:$TMUX_WINDOW_0 -c $PATH_TMUX_SESSION
        tmux send-keys -t $TMUX_SESSION:$TMUX_WINDOW_0.1 'heroku logs -t -a luxcium' C-m
        tmux select-window -t $TMUX_SESSION:$TMUX_WINDOW_0
        tmux select-pane -t :.1 -P 'bg=black' -T HEROKU
        tmux last-pane -t $TMUX_SESSION:$TMUX_WINDOW_0.0
    fi
    tmux-attach
}
