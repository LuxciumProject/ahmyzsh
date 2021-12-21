#!/usr/bin/env zsh

# source $HOME/ahmyzsh/core/aliases/12012-ALS-sounds.sh
source $AHMYZSH/settings/iptables-eno1.sh

# enable_systemctl up && ( (play_zelda_email)&)

# (
#   conda update -n base conda -y && (play_screen-capture &)
#   conda update --all -y && (play_screen-capture &)
# ) &

# (
#   sudo fc-cache -rfE
#   fc-cache -rfE
# ) & #  3.4356s

# (
#   eval $(
#     fnm env
#   )

#   fnm install 10  #&& (play_zelda_maximize &sleep 0.075) || (play_zelda_minimize&sleep 0.175)
#   fnm install 12  #&& (play_zelda_maximize &sleep 0.075) || (play_zelda_minimize&sleep 0.175)
#   (fnm install 14  && fnm default 14) #  && (play_zelda_maximize &sleep 0.075) || (play_zelda_minimize&sleep 0.175)
#   (fnm install 15  && fnm default 15) #  && (play_zelda_maximize &sleep 0.075) || (play_zelda_minimize&sleep 0.175)
#   (fnm install 16  && fnm default 16) # && (play_zelda_maximize &sleep 0.075) || (play_zelda_minimize&sleep 0.175)
#   (fnm install 17  && fnm default 17) # && (play_zelda_maximize &sleep 0.075) || (play_zelda_minimize&sleep 0.175)
#   fnm list

#   (
#     code-insiders /home/luxcium/ahmyzsh &
#     sleep 0.5
#     sudo renice -n 5 -p $(
#       pidof -w -x code-insiders
#     )
#     sudo ionice -c 2 -n 1 -p $(
#       pidof -w -x code-insiders
#     )
#   ) &

#   (
#     sleep 2
#     nice -n 5 terminator --title='Monitoring Terminal' --role=terminator-ZF987CDA0x &
#     # nice -n 5 gnome-terminal --title='Monitoring Terminal' --class=Monitoring-Terminal-Z6C4C35AEx --name=gnome-terminal-Z757425E8x --role=gnome-terminal-ZF987CDA0x
#     sleep 2
#     sudo ionice -c 2 -n 1 -p $(
#       pidof -w -x terminator
#     )
#   )&

# ) & #  0.6995s 
