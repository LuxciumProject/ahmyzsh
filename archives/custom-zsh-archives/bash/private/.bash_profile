echo "\u001b[35m# LOADING... (**  USER   .bash_profile)"
source "${BASH_BIN}/.bash_profile.sh"

# /bin/bash
#        The bash executable
# /etc/profile
#        The systemwide initialization file, executed for login shells
# ~/.bash_profile
#        The personal initialization file, executed for login shells
# ~/.bashrc
#        The individual per-interactive-shell startup file
# ~/.bash_logout
#        The individual login shell cleanup file, executed when a login shell exits
# ~/.inputrc
#        Individual readline initialization file

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/neb_401/anaconda3/tungsten/bin/conda' 'shell.bash' 'hook' 2>/dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "${HOME}/anaconda3/tungsten/etc/profile.d/conda.sh" ]; then
        . "${HOME}/anaconda3/tungsten/etc/profile.d/conda.sh"
    else
        export PATH="${HOME}/anaconda3/tungsten/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
