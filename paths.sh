export POWERLINE="$(pwd)/powerline"
export POWERLEVEL10K="$(pwd)/powerlevel10k"
export OHMYZSH="$(pwd)/ohmyzsh"
export CUSTOM_ZSH="$(pwd)/custom-zsh"
export CUSTOM_TMUX="$(pwd)/custom-tmux"
export PYTHON_REPL="$(pwd)/python-repl"
export NODE_REPL="$(pwd)/node-repl"

# |                |Interactive|Interactive|Script|
# |                |login      |non-login  |      |
# |/etc/zshenv     |    A      |    A      |  A   |
# |~/.zshenv       |    B      |    B      |  B   |
# |/etc/zprofile   |    C      |           |      |
# |~/.zprofile     |    D      |           |      |
# |/etc/zshrc      |    E      |    C      |      |
# |~/.zshrc        |    F      |    D      |      | ***
# |/etc/zlogin     |    G      |           |      |
# |~/.zlogin       |    H      |           |      |
# |                |           |           |      |
# |                |           |           |      |
# |~/.zlogout      |    I      |           |      |
# |/etc/zlogout    |    J      |           |      |

# /bin/bash ~ The bash executable
# /etc/profile ~ The systemwide initialization file, executed for login shells
# ~/.bash_profile ~ The personal initialization file, executed for login shells
# ~/.bashrc ~ The individual per-interactive-shell startup file
# ~/.bash_logout ~ The individual login shell cleanup file, executed when a login shell exits
# ~/.inputrc ~ Individual readline initialization file
