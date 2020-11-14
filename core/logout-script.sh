#!/usr/bin/env sh

(fc-cache -v) &
(sudo nice -n -10 ionice -c 1 -n 3 dnf clean all) &
# sudo dnf remove -y xorg-x11-drv-amdgpu xorg-x11-drv-nouveau

exit
