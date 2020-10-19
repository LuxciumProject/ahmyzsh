# !!  /Users/neb_401/ahmyzsh/custom-zsh/MAIN.zsh
function source_all() {
    source_ "${TMUX_FUNCTIONS_INDEX}"

    function source_powerline_now() {
        source_ "${POWERLINE_BINDINGS}/zsh/powerline.zsh"
        return 0
    }

    function source_tmux() {
        source_ "${TMUX_FUNCTIONS}/index.sh"
        source_ "${TMUX_BIN}/tmux-loader.sh"
        load_tmux
        source_powerline_now
    }

    function reload_path() {
        load_path
        compute_path
    }

}

function load_zprofile() {
    # pre load_zshrc()
    # 	#$ Interactive,login

}
#

function load_zlogin() {
    # post load_zshrc()
    # 	#$ Interactive,login

}
