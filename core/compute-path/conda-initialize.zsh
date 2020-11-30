function conda_init() {
    # >>> conda initialize >>>
    # !! Contents within this block are managed by 'conda init' !!
    __conda_setup="$('/home/luxcium/miniconda3/bin/conda' 'shell.zsh' 'hook' 2>/dev/null)"
    if [ $? -eq 0 ]; then
        eval "$__conda_setup"
    else
        if [ -f "/home/luxcium/miniconda3/etc/profile.d/conda.sh" ]; then
            . "/home/luxcium/miniconda3/etc/profile.d/conda.sh"
        else
            export PATH="/home/luxcium/miniconda3/bin:$PATH"
        fi
    fi
    unset __conda_setup
    # <<< conda initialize <<<
}

function conda_init_old() {

    # >>> conda initialize >>>
    # !! Contents within this block are managed by 'conda init' !!
    local __conda_setup="$('/Users/neb_401/miniconda3/niobium/bin/conda' 'shell.bash' 'hook' 2>/dev/null)"
    if [ $? -eq 0 ]; then
        eval "$__conda_setup"
    else
        if [ -f "/Users/neb_401/miniconda3/niobium/etc/profile.d/conda.sh" ]; then
            . "/Users/neb_401/miniconda3/niobium/etc/profile.d/conda.sh"
        else
            export PATH="/Users/neb_401/miniconda3/niobium/bin:$PATH"
        fi
    fi
    # <<< conda initialize <<<

}

function Xconda_init() {

    if [ -x /usr/libexec/path_helper ]; then
        eval $(/usr/libexec/path_helper -s)
    fi
    {
        { #& >>> conda initialize >>>
            # !! Contents within this block are managed by 'conda init' !!
            # __conda_setup="$('/Users/neb_401/anaconda3/tungsten/bin/conda' 'shell.zsh' 'hook' 2>/dev/null)"
            # if [ $? -eq 0 ]; then
            # eval "$__conda_setup"
            # else
            if [ -f "${HOME}/anaconda3/tungsten/etc/profile.d/conda.sh" ]; then
                . "${HOME}/anaconda3/tungsten/etc/profile.d/conda.sh"
            else
                export PATH="${HOME}/anaconda3/tungsten/bin:$PATH"
            fi
            # fi
            conda activate
            unset __conda_setup
        } #& <<< conda initialize <<<

    }

}
