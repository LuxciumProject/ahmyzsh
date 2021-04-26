function load_tmux() {
    . "${TMUX_LIB}/tmux-env.sh"

    . "${TMUX_LIB}/tmux-functions.sh"
    load_tmux_functions

    . "${TMUX_LIB}/tmux-dev-projects.sh"
}
