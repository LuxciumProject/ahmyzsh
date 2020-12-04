#!/usr/bin/env sh

(sudo nice -n -10 ionice -c 1 -n 3 dnf clean all) &

(
  (nice -5 ionice -c 2 -n 0 sudo fc-cache -rfE)
  (nice -5 ionice -c 2 -n 0 fc-cache -rfE)
) &

kquitapp5 plasmashell

sudo killall ckb-next
sudo killall ckb-next-daemon
sudo killall ckb1
sudo killall ckb2
sudo killall 'ckb1 input'
sudo killall 'ckb2 input'
sudo killall 'ckb2 led'
sudo killall 'ckb1 usb'
sudo killall 'ckb2 usb'
sudo killall 'gradient'
sudo killall 'invaders'

# sudo dnf remove -y xorg-x11-drv-amdgpu xorg-x11-drv-nouveau

exit
