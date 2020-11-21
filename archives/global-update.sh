#!/usr/bin/env sh

sudo dnf clean all
sudo dnf upgrade -v --downloadonly -y

## Groupes et groupes d’environnements disponibles :
sudo dnf group remove -y custom-environment minimal-environment server-product-environment workstation-product-environment cloud-server-environment xfce-desktop-environment lxde-desktop-environment lxqt-desktop-environment cinnamon-desktop-environment mate-desktop-environment sugar-desktop-environment deepin-desktop-environment developer-workstation-environment web-server-environment 3d-printing authoring-and-publishing books cloud-infrastructure compiz domain-client eclipse editors education electronic-lab engineering-and-scientific freeipa-server libreoffice mate-applications medical milkymist network-server neuron-modelling-simulators office robotics-suite security-lab text-internet window-managers deepin-desktop graphical-internet games sound-and-video

## Groupes et groupes d’environnements installés :
sudo dnf group install -y kde-desktop-environment infrastructure-server-environment basic-desktop-environment admin-tools audio c-development cloud-management container-management d-development design-suite development-tools headless-management python-classroom python-science rpm-development-tools gnome-desktop kde-desktop fonts hardware-support system-tools

yarn global add pnpm@latest npm@latest

npm install -g typescript@latest ts-node@latest vsce@latest eslint@latest prettier@latest npm@latest bash-language-server@latest redis-commander@latest yarn@latest pnpm@latest

yarn global add yarn@latest

sudo dnf upgrade

sudo dnf autoremove --assumeno
npm list -g --depth 0
yarn global list

#  sudo nice -n -20 taskset -c 0,1,5,8 ionice -c 1 -n 1 /home/luxcium/dev/luxcium.io/global-update.sh

exit 0
