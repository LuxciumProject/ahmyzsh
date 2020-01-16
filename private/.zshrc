echo -n "\u001b[0m\u001b[34m# LOADING... (!!  USER   .zshrc)\u001b[31;1m\n"
source "${ZSH_BIN}/.zshrc"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/neb_401/anaconda3/tungsten/bin/conda' 'shell.zsh' 'hook' 2>/dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/neb_401/anaconda3/tungsten/etc/profile.d/conda.sh" ]; then
        . "/Users/neb_401/anaconda3/tungsten/etc/profile.d/conda.sh"
    else
        export PATH="/Users/neb_401/anaconda3/tungsten/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
