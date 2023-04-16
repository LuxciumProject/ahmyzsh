#!/bin/bash

function __dedup_path() {
    dedup_pathvar_ PATH
    export PATH
    return
}

function set_path() {
    # __compute_base_path
    __append_bin_to_path
    add_to_path_ '/home/luxcium/.local/share/fnm'
    add_to_path_ eval "$(fnm env)"
    __compute_extended_path
    conda_init_esoteric-argentum
    __dedup_path
    return
}

# PATH=$PATH:$(go env GOPATH)/bin
function set_sbin_path() {
    # __compute_base_path
    __append_sbin_to_path
    __compute_extended_path
    __dedup_path
    return
}

alias add_sbin=set_sbin_path
alias sbin_path=set_sbin_path
alias set_sbin=set_sbin_path

function cache_path() {
    set_path >/dev/null
    echo "export PATH=$PATH" >"$CACHED_PATH"
}

# reload_path() {
#     echo PATH was:
#     echo "$PATH" | tr ":" "\n"
#     source /home/luxcium/ahmyzsh/core/compute-path/path.sh
#    export SP80="                                                                                "
#     __append_bin_to_path
#     set_path
#     cache_path
#     source_ "${CORE_COMPUTE}"/path.sh
#     compute_path
#     echo -en "${SP80}"
#     echo_path
#     echo PATH now is:
#     echo "$PATH" | tr ":" "\n"
# }

## shellcheck source=/home/luxcium/.cache/ahmyzsh/path.env
# add_to_path_ "/usr/local/opt/ncurses/bin"
# add_to_path_ "${HOME}/perl5/bin"
# add_to_path_ "/usr/local/opt/gettext/bin"
# add_to_path_ "/usr/local/share/zsh/site-functions"
# add_to_path_ "/home/luxcium/.nvm/versions/node/v14.4.0/bin"
# }

## shellcheck source=/home/luxcium/.cache/ahmyzsh/path.env
# add_to_path_ "/usr/local/opt/ncurses/bin"
# add_to_path_ "${HOME}/perl5/bin"
# add_to_path_ "/usr/local/opt/gettext/bin"
# add_to_path_ "/usr/local/share/zsh/site-functions"
# add_to_path_ "/home/luxcium/.nvm/versions/node/v14.4.0/bin"
