#!/usr/bin/env sh

# sudo dnf clean all # quick
sudo dnf upgrade --downloadonly -y

## Groupes et groupes d’environnements disponibles :
sudo dnf group remove -y custom-environment minimal-environment server-product-environment workstation-product-environment cloud-server-environment xfce-desktop-environment lxde-desktop-environment lxqt-desktop-environment cinnamon-desktop-environment mate-desktop-environment sugar-desktop-environment deepin-desktop-environment developer-workstation-environment web-server-environment 3d-printing authoring-and-publishing books cloud-infrastructure compiz domain-client eclipse editors education electronic-lab engineering-and-scientific freeipa-server libreoffice mate-applications medical milkymist network-server neuron-modelling-simulators office robotics-suite security-lab text-internet window-managers deepin-desktop graphical-internet games sound-and-video

## Groupes et groupes d’environnements installés :
sudo dnf group install -y kde-desktop-environment infrastructure-server-environment basic-desktop-environment admin-tools audio c-development cloud-management container-management d-development design-suite development-tools headless-management python-classroom python-science rpm-development-tools gnome-desktop kde-desktop fonts hardware-support system-tools

npm install -g npm@latest

/home/luxcium/.yarn/bin/yarn global add yarn@latest pnpm@latest

/home/luxcium/.yarn/bin/pnpm install -g bash-language-server@latest create-react-app@latest eslint@latest prettier@latest redis-commander@latest ts-node@latest typescript@latest vsce@latest

npm list -g --depth 0
/home/luxcium/.yarn/bin/pnpm list -g --depth 0
/home/luxcium/.yarn/bin/yarn global list

sudo dnf autoremove --assumeno

sudo dnf upgrade

# sudo nice -n -20 taskset -c 0,1,5,8 ionice -c 1 -n 0 /home/luxcium/dev/luxcium.io/global-update-quick.sh

exit 0

npm install -g typescript@latest ts-node@latest vsce@latest eslint@latest prettier@latest bash-language-server@latest redis-commander@latest

Espace libéré : 85 M
Opération avortée.
/home/luxcium/.fnm/node-versions/v12.18.2/installation/lib

Legend: production dependency, optional only, dev only

/home/luxcium/.fnm/node-versions/v12.18.2/installation/pnpm-global/4

dependencies:
pnpm 5.4.0
yarn global v1.22.4
info "create-react-app@3.4.1" has binaries:
- create-react-app
