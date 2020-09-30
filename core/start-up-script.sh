#!/bin/sh

# Start Up Script
(fc-cache -v) &
(sudo nice -n -10 ionice -c 1 -n 0 dnf remove -y xorg-x11-drv-amdgpu xorg-x11-drv-nouveau)
(sudo nice -n -10 ionice -c 1 -n 3 dnf clean all)
(sudo nice -n -10 ionice -c 1 -n 3 dnf -4 makecache)
(sudo nice -n 20 dnf upgrade --downloadonly -v -y) &

# (
#   cd /home/luxcium/src/v4l2loopback &&
#     make clean &&
#     git pull origin &&
#     sudo make &&
#     sudo make install &&
#     sudo depmod -a -v &&
#     sudo modprobe -v v4l2loopback &&
#     cd /sys/devices/virtual/video4linux/
# ) || echo "ERROR"

# sudo wall -n "$(gphoto2 --abilities)"

exit
