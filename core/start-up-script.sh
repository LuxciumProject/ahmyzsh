#!/usr/bin/env sh

echo "Start Up Script begin"
( 

    (nice -5 code-insiders /home/luxcium/ahmyzsh) &

    (nice -n 30 ionice -c 3 fc-cache -v) &

    (nice -n 30 ionice -c 3 fnm install 8) &
    (nice -n 30 ionice -c 3 fnm install 10) &
    (nice -n 30 ionice -c 3 fnm install 12) &
    (nice -n 30 ionice -c 3 fnm install 14) &
    (nice -n 30 ionice -c 3 fnm install 15 && fnm default 15 && fnm use default) &

    (nice -n 30 ionice -c 3 conda update conda -y && nice -n 30 ionice -c 3 conda update --all -y) &

    # (
    #     npm install -g concurrently@latest create-react-app@latest eslint@latest prettier@latest ts-node@latest vsce@latest yarn@latest npm@latest pnpm@latest typescript@latest
    # )&

    (nice -n 30 ionice -c 3 dnf remove -y xorg-x11-drv-amdgpu xorg-x11-drv-nouveau) &
    (nice -n 30 ionice -c 3 dnf -4 makecache) &
    (nice -n 30 ionice -c 3 dnf upgrade --downloadonly -v -y) &

)

echo "Start Up Script end"

exit

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
