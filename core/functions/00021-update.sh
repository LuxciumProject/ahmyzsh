#!/bin/bash

function cc_update() {
  conda update -n base -c defaults conda -y
  conda update --all -y
}

function update_fnm() {
  CURRENT=20
  LATEST=21

  fnm install 14
  fnm install 16
  fnm install 18
  fnm install ${LATEST}
  fnm install ${CURRENT}
  fnm default ${CURRENT}
  fnm use default
  fnm list
}

all_update() {
  update_fnm
  pnpm add -g pnpm@latest
  pnpm -g i @microsoft/rush@latest create-next-app@latest eslint@latest five-server@latest jest@latest nodemon@latest postcss-cli@latest prettier@latest ts-node@latest tspath@latest typedoc@latest typescript@latest vitest@latest
  cc_update
  sudo dnf distro-sync --refresh -y
}

alias update_all=all_update

update_nboot() {
  update_all
  (
    sleep 1.45
    /sbin/reboot
  ) &
  killcodemore
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
