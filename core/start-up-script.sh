#!/bin/sh

fc-cache -v
sudo dnf remove -y xorg-x11-drv-amdgpu xorg-x11-drv-nouveau
sudo dnf update --downloadonly -v -y

exit
