#!/usr/bin/env sh

# (sudo nice -n -10 ionice -c 2 -n 3 dnf clean all) &

# (
#   (nice -5 ionice -c 2 -n 0 sudo fc-cache -rfE)
#   (nice -5 ionice -c 2 -n 0 fc-cache -rfE)
# ) &

# kquitapp5 plasmashell

# sudo killall ckb-next
# sudo killall ckb-next-daemon
# sudo killall ckb1
# sudo killall ckb2
# sudo killall 'ckb1 input'
# sudo killall 'ckb2 input'
# sudo killall 'ckb2 led'
# sudo killall 'ckb1 usb'
# sudo killall 'ckb2 usb'
# sudo killall 'gradient'
# sudo killall 'invaders'

# # sudo dnf remove -y xorg-x11-drv-amdgpu xorg-x11-drv-nouveau

# (play -qv 0.1 /usr/share/sounds/Oxygen-Sys-Log-Out.ogg chorus 0.4 0.9 50 0.5 0.25 2 -t 40 0.6 0.2 3 -s 60 0.6 0.3 1.3 -t)
reboot
exit
