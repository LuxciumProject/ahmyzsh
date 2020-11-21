#!/usr/bin/env sh

# Start Up Script
( 

    (code-insiders /home/luxcium/ahmyzsh) &

    (fc-cache -v) &

    (fnm install latest-argon) &
    (fnm install latest-boron) &
    (fnm install latest-carbon) &
    (fnm install latest-dubnium) &
    (fnm install latest-erbium) &
    (fnm install latest-fermium) &
    (fnm install latest && fnm default 15 && fnm use default) &

    (conda update conda -y && conda update --all -y) &

    # (
    #     npm install -g concurrently@latest create-react-app@latest eslint@latest prettier@latest ts-node@latest vsce@latest yarn@latest npm@latest pnpm@latest typescript@latest
    # )&

    (sudo nice -n -10 ionice -c 1 -n 3 dnf remove -y xorg-x11-drv-amdgpu xorg-x11-drv-nouveau) &
    (sudo nice -n -10 ionice -c 1 -n 3 dnf -4 makecache) &
    (sudo nice -n -10 dnf upgrade --downloadonly -v -y) &

)

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
