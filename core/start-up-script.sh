#!/usr/bin/env sh

echo "Start Up Script begin"
( 
  (nice -10 code-insiders /home/luxcium/ahmyzsh) &

  (nice -n 30 ionice -c 3 fc-cache -v) &

  (
    eval $(fnm env)
    (nice -n 30 ionice -c 3 fnm install 8) &
    (nice -n 30 ionice -c 3 fnm install 10) &
    (nice -n 30 ionice -c 3 fnm install 12) &
    (nice -n 30 ionice -c 3 fnm install 14) &
    (nice -n 30 ionice -c 3 fnm install 15 && fnm default 15 && fnm use default)
  )

  (nice -n 30 ionice -c 3 conda update conda -y && nice -n 30 ionice -c 3 conda update --all -y)

  ( 
    (nice -n 30 ionice -c 3 sudo dnf remove -y xorg-x11-drv-amdgpu xorg-x11-drv-nouveau)
    (nice -n 30 ionice -c 3 sudo dnf -4 makecache)
    (nice -n 30 ionice -c 3 sudo dnf upgrade --downloadonly -v -y)
  )
)

exit 0

# (
#   cd /usr/src/v4l2loopback &&
#     make clean &&
#     git pull origin &&
#     sudo make &&
#     sudo make install &&
#     sudo depmod -a -v &&
#     sudo modprobe -v v4l2loopback &&
#     cd /sys/devices/virtual/video4linux/
# ) || echo "ERROR"

# sudo wall -n "$(gphoto2 --abilities)"
