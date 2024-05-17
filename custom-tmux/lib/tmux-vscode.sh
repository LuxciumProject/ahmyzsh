function tmux_vscode() {
    TMUX_SESSION='VSCODE'
    TMUX_WINDOW_0='VS-Code'

    tmux has-session -t $LXI_SESSION 2>/dev/null
    if [ $? != 0 ]; then
        tmux new -D -s $LXI_SESSION -d -n $TMUX_WINDOW_0 -c $PATH_LXIO
    else
        tmux new-window -t $LXI_SESSION -n $TMUX_WINDOW_0 -c $PATH_LXIO
    fi

    tmux has-session -t $VS_CODE_SESSION 2>/dev/null
    if [ $? != 0 ]; then
        tmux new -D -s $VS_CODE_SESSION -d -n $TMUX_WINDOW_0 -c $PATH_LXIO
    fi

    tmux link-window -s $LXI_SESSION -t $VS_CODE_SESSION
    tmux attach -t $TMUX_SESSION
    tmux source "$TMUX_CONFIGS"/common.tmux.conf
    # tmux source "$TMUX_CONFIGS"/theme.tmux.conf

}
