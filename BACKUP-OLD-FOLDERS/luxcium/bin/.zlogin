# if [ -z "$TMUX" ]; then
    # tmux-start
#     tmux attach -t default || tmux new -s default
# fi

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