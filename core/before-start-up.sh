#!/usr/bin/env sh

# sudo dnf update --downloadonly -v -y

(
  (nice -5 ionice -c 2 -n 0 sudo dnf remove xorg-x11-drv-amdgpu xorg-x11-drv-nouveau -y) &
  (nice -5 ionice -c 2 -n 0 sudo dnf -4 makecache -y)
  (nice -5 ionice -c 2 -n 0 sudo dnf upgrade --downloadonly -y)
) &
