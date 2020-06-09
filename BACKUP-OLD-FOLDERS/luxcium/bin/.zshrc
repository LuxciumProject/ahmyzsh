# START FROM : {/etc/zshrc}
# Correctly display UTF-8 with combining characters.
if [ "$TERM_PROGRAM" = "Apple_Terminal" ]; then
    setopt combiningchars
fi

disable log

[ -r "/etc/zshrc_$TERM_PROGRAM" ] && . "/etc/zshrc_$TERM_PROGRAM"
# END {/etc/zshrc}
ENV_LOADED='false'
source "${ZSH_LUXCIUM}/.other-code.sh"
# hardcls
load_other_code
load_oh_my_zsh
load_compute_p9k
compute_path

##
# time  zsh -i -c exit
# zsh -i -c exit  0.67s user 0.06s system 86% cpu 0.842 total
##

# +----------------+-----------+-----------+------+
# |                |Interactive|Interactive|Script|
# |                |login      |non-login  |      |
# +----------------+-----------+-----------+------+
# |/etc/zshenv     |    A      |    A      |  A   |
# +----------------+-----------+-----------+------+
# |~/.zshenv       |    B      |    B      |  B   |
# +----------------+-----------+-----------+------+
# |/etc/zprofile   |    C      |           |      |
# +----------------+-----------+-----------+------+
# |~/.zprofile     |    D      |           |      |
# +----------------+-----------+-----------+------+
# |/etc/zshrc      |    E      |    C      |      |
# +----------------+-----------+-----------+------+
# |~/.zshrc        |    F      |    D      |      |
# +----------------+-----------+-----------+------+
# |/etc/zlogin     |    G      |           |      |
# +----------------+-----------+-----------+------+
# |~/.zlogin       |    H      |           |      |
# +----------------+-----------+-----------+------+
# |                |           |           |      |
# +----------------+-----------+-----------+------+
# |                |           |           |      |
# +----------------+-----------+-----------+------+
# |~/.zlogout      |    I      |           |      |
# +----------------+-----------+-----------+------+
# |/etc/zlogout    |    J      |           |      |
# +----------------+-----------+-----------+------+
# put stuff in ~/.zshrc, which is always executed.
# sudo code /etc/zshenv ;sudo code ~/.zshenv ;sudo code /etc/zprofile ;sudo code ~/.zprofile ;sudo code /etc/zshrc ;sudo code ~/.zshrc ;sudo code /etc/zlogin ;sudo code ~/.zlogin ;sudo code ~/.zlogout ;sudo code /etc/zlogout
