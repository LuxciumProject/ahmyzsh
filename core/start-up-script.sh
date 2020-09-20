#!/bin/sh

# Start Up Script
(fc-cache -v) &
(sudo nice -n -25 ionice -c 1 -n 0 dnf remove -y xorg-x11-drv-amdgpu xorg-x11-drv-nouveau)
(sudo nice -n 20 dnf upgrade --refresh --downloadonly -v -y) &
exit
