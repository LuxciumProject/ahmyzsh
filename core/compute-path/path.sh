#!/bin/bash
export _CONDA3="${HOME}/minerva3"
export CUDA_VERSION="cuda-12.0"
export DOTNET_ROOT="/usr/lib64/dotnet/"
export DOTNET_CLI_TELEMETRY_OPTOUT=true
export PATH_BAK_0="${PATH}"
export LD_LIBRARY_PATH=/usr/local/${CUDA_VERSION}/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
export PNPM_HOME="${HOME}/.local/share/pnpm"
export NVM_DIR="$HOME/.nvm"
export FNM_PATH="${HOME}/.local/share/fnm"
export RBENV_PATH="${HOME}/.rbenv/bin:${HOME}/.rbenv/shims"

function add_to_path_() {
    [ -z "$1" ] || [ -d "$1" ] && export PATH="${1}:${PATH}"
}

function append_to_path_() {
    [ -z "$1" ] || [ -d "$1" ] && export PATH="${PATH}:${1}"
}

append_to_path() {
    if [ -z "$1" ] || [ ! -d "$1" ]; then
        return 1
    fi
    PATH="$PATH:$1"
    export PATH
}


function dedup_pathvar_() {
    # #region Deduplicate path variables =======================================¹
    # https://unix.stackexchange.com/a/149054/431235
    # © 2014 by https://unix.stackexchange.com/users/1010
    # © CC BY-SA 3.0 ¹ (User: Ryan C. Thompson ― Aug 7 '14 at 17:35)
    
    ## If you want some more structure around it,
    ## as well as the ability to deduplicate other variables as well,
    ## try this snippet, which I'm currently using in my own config:
    
    _get_var() {
        eval 'printf "%s\n" "${'"$1"'}"'
    }
    
    _set_var() {
        eval "$1=\"\$2\""
    }
    
    _dedup_pathvar() {
        pathvar_name="$1"
        pathvar_value="$(_get_var "$pathvar_name")"
        deduped_path="$(perl -e 'print join(":",grep { not $seen{$_}++ } split(/:/, $ARGV[0]))' "$pathvar_value")"
        _set_var "$pathvar_name" "$deduped_path"
    }
    
    ## That code will deduplicate both PATH and MANPATH,
    ## and you can easily call dedup_pathvar on other variables that hold
    ## colon-separated lists of paths (e.g. PYTHONPATH).
    
    # #endregion Deduplicate path variables ====================================¹
    _dedup_pathvar "${@}"
    
    unset -f _dedup_pathvar
    unset -f _get_var
    unset -f _set_var
    
}

function conda_init_mystic-mercury() {
    echo init mystic-mercury
    # >>> conda initialize >>>
    # !! Contents within this block are managed by 'conda init' !!
    __conda_setup="$('/home/luxcium/mystic-mercury/bin/conda' 'shell.bash' 'hook' 2>/dev/null)"
    if [ "$SELECTION" -eq 0 ]; then
        eval "$__conda_setup"
    else
        if [ -f "/home/luxcium/mystic-mercury/etc/profile.d/conda.sh" ]; then
            . "/home/luxcium/mystic-mercury/etc/profile.d/conda.sh"
        else
            export PATH="/home/luxcium/mystic-mercury/bin:$PATH"
        fi
    fi
    unset __conda_setup
    # <<< conda initialize <<<
}


function usenvm() {
    export NVM_DIR="$HOME/.nvm"
    # shellcheck source=/dev/null
    # This loads nvm
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
    
    # shellcheck source=/dev/null
    # This loads nvm bash_completion
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
}

function rbenv_() {
    # echo 'export PATH="${HOME}/.rbenv/bin:$PATH"' >>~/.zshrc
    eval "$(rbenv init -)"
}

function __append_sbin_to_path() {
    export PATH="/usr/local/sbin"
    append_to_path_ "/usr/local/bin"
    append_to_path_ "/usr/sbin"
    append_to_path_ "/usr/bin"
    append_to_path_ "/sbin"
    append_to_path_ "/bin"
    append_to_path_ "${AHMYZSH}/core/bin"
    return
}

function __append_bin_to_path() {
    export PATH="/usr/local/bin"
    append_to_path_ "/usr/bin"
    append_to_path_ "/app/bin"
    append_to_path_ "/bin"
    append_to_path_ "${AHMYZSH}/core/bin"
    append_to_path_ "/snap/bin"
    return
}


function __compute_extended_path() {
    add_to_path_ "/usr/lib64/ccache"
    add_to_path_ "/usr/lib64/qt5/bin"
    add_to_path_ "/usr/local/go/bin"
    # add_to_path_ "$(go env GOPATH)/bin"
    add_to_path_ "/usr/local/${CUDA_VERSION}/bin"
    add_to_path_ "/opt/nvidia/nsight-compute"
    add_to_path_ "/app/bin"
    add_to_path_ "${HOME}/.yarn/bin"
    # add_to_path_ "${HOME}/spx"
    # call_ rust_up_
    add_to_path_ '/usr/local/go/bin'
    add_to_path_ "${HOME}/.rbenv/shims"
    add_to_path_ "${HOME}/.rbenv/bin"
    call_ rbenv_
    add_to_path_ "${RBENV_PATH}"
    add_to_path_ "${HOME}/.nvm"
    # call_ __NVM
    # call_ conda_
    add_to_path_ '/home/luxcium/main-vscode/bin'
    add_to_path_ '/projects/main-POP-N-LOCK-x1DF2/bin'
    # add_to_path_ '/home/luxcium/.local/share'
    add_to_path_ "$PNPM_HOME"
    add_to_path_ "${HOME}/.config/yarn/global/node_modules/.bin"
    add_to_path_ "${HOME}/.local/bin"
    add_to_path_ "${FNM_PATH}"
    add_to_path_ "${HOME}/bin"
    
    return
}

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
    conda_init_mystic-mercury
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

reload_path() {
    echo PATH was:
    echo "$PATH" | tr ":" "\n"
    source /home/luxcium/ahmyzsh/core/compute-path/path.sh
    SP80="                                                                                "
    __append_bin_to_path
    set_path
    cache_path
    source_ "${CORE_COMPUTE}"/path.sh
    compute_path
    echo -en "${SP80}"
    echo_path
    echo PATH now is:
    echo "$PATH" | tr ":" "\n"
}
