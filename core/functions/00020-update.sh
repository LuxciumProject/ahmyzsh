#!/bin/bash

# Current or LTS
#  typescript@latest gulp-cli@latest ts-node@latest vsce@latest jest@latest
#  typescript@latest gulp-cli@latest ts-node@latest prettier@latest jest@latest
# export PACKAGES_NPM='eslint@latest jest@latest node-gyp@latest npm@latest prettier@latest ts-node@latest typescript@latest vsce@latest yarn@latest grunt-cli@latest'
# export NPM_PACKAGES=$PACKAGES_NPM
function _npm_update() {
  echo ''
  echo npm version "$(npm --version)"
  echo ''

  echo 'eslint@latest +++++++++++++++++++++++++++++++++++++++++++++++++++++'
  npm uninstall -g eslint
  npm install -g eslint@latest
  echo 'jest@latest +++++++++++++++++++++++++++++++++++++++++++++++++++++'
  npm uninstall -g jest
  npm install -g jest@latest
  # echo 'node-gyp@latest +++++++++++++++++++++++++++++++++++++++++++++++++++++'
  # npm uninstall -g node-gyp
  # npm install -g node-gyp@latest
  # echo 'npm@latest +++++++++++++++++++++++++++++++++++++++++++++++++++++'
  # npm uninstall -g npm
  # npm install -g npm@latest
  echo 'prettier@latest +++++++++++++++++++++++++++++++++++++++++++++++++++++'
  npm uninstall -g prettier
  npm install -g prettier@latest
  echo 'ts-node@latest +++++++++++++++++++++++++++++++++++++++++++++++++++++'
  npm uninstall -g ts-node
  npm install -g ts-node@latest
  echo 'typescript@latest +++++++++++++++++++++++++++++++++++++++++++++++++++++'
  npm uninstall -g typescript
  npm install -g typescript@latest
  # echo 'grunt-cli@latest +++++++++++++++++++++++++++++++++++++++++++++++++++++'
  # npm uninstall -g grunt-cli
  # npm install -g grunt-cli@latest

  echo ''
  compute_pl10K_now
  echo npm version "$(npm --version)"
  echo TypeScript "$(tsc -v)"
  echo NodeJS "$(node -v)"
  echo ''
}
function fnm_update() {
  fnm_update_to_current
}

function fnm_update_to_current() {
  fnm_update_to_16
  fnm_update_to_18
}

function fnm_update_to_lts() {
  fnm_update_to_18
  fnm_update_to_16
}

function fnm_update_to_14() {
  fnm install 14
  fnm default 14
  fnm use default
  _npm_update
}

function fnm_update_to_16() {
  fnm install 16
  fnm default 16
  fnm use default
  _npm_update
}

function fnm_update_to_18() {
  fnm install 18
  fnm default 18
  fnm use default
  _npm_update
}

function cc_update() {
  conda update conda -y
  conda update --all -y
}

function update_fnm() {

  CURRENT=20

  fnm unalias lts-hydrogen
  fnm unalias lts
  fnm unalias active

  fnm install 18
  fnm use 18
  _npm_update
  fnm default 18

  fnm alias 18 active
  fnm alias 18 lts-hydrogen
  fnm alias 18 lts

  fnm unalias current
  fnm install ${CURRENT}
  fnm use ${CURRENT}
  _npm_update
  fnm alias ${CURRENT} current

  fnm unalias Argon
  fnm unalias Boron
  fnm unalias Carbon
  fnm unalias Dubnium
  fnm unalias Erbium
  fnm unalias Fermium
  fnm unalias Gallium
  fnm unalias Hydrogen

  fnm unalias eol-argon
  fnm unalias eol-boron
  fnm unalias eol-carbon
  fnm unalias eol-dubnium
  fnm unalias eol-erbium
  fnm unalias maintenance-fermium
  fnm unalias maintenance-gallium

  fnm install 4
  fnm install 6
  fnm install 8
  fnm install 10
  fnm install 12
  fnm install 14
  fnm use 14
  _npm_update
  fnm install 16
  fnm use 16
  _npm_update

  fnm alias 4 Argon
  fnm alias 6 Boron
  fnm alias 8 Carbon
  fnm alias 10 Dubnium
  fnm alias 12 Erbium

  fnm alias 4 eol-argon
  fnm alias 6 eol-boron
  fnm alias 8 eol-carbon
  fnm alias 10 eol-dubnium
  fnm alias 12 eol-erbium
  fnm alias 14 Fermium
  fnm alias 14 maintenance-fermium
  fnm alias 16 Gallium
  fnm alias 16 maintenance-gallium
  fnm alias 18 Hydrogen
  # fnm alias 18 maintenance-hydrogen

  fnm install 19
  fnm use 19
  _npm_update

  fnm use default
  fnm list

}

# function dnf_downloadonly() {
#   echo 'dnf makecache --refresh'
#   echo 'dnf upgrade --downloadonly'
#   (
#     (
#       (
#         sudo nice -15 ionice -c 1 -n 2 dnf makecache --refresh --assumeyes
#         sudo nice -n -15 ionice -c 1 -n 2 dnf upgrade --downloadonly --setopt=keepcache=1 --assumeyes
#       ) &
#     ) >/dev/null
#   ) 2>/dev/null
# }

all_update() {
  # dnf_downloadonly
  cc_update
  # sudo rustup update
  rustc --version
  fnm_update_to_14
  fnm_update_to_16
  fnm_update_to_18
  npm install -g @yarn@latest
}
# shell/check disable=SC2046,SC2086
# yarn global add $PACKAGES_NPM

alias update_all=all_update

update_nboot() {
  update_all
  sudo reboot
}

# † Scientia es lux principium✨ ™

# Copyright © 2020 Luxcium (Benjamin Vincent Kasapoglu)

# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:

# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

# « †Scientia es lux principium✨ » IS A TRADEMARK OF BENJAMIN VINCENT (Luxcium)
# (™ & © 2016-2020 ALL RIGHT RESERVED)
