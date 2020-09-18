#!/bin/sh

fc-cache -v
sudo dnf remove -y xorg-x11-drv-amdgpu xorg-x11-drv-nouveau
(sudo nice -n -15 ionice -c 1 -n 3 dnf upgrade --refresh --downloadonly -v -y)
exit
