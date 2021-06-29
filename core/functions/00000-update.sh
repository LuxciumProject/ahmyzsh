# Current or LTS

function fnm_update_to_lts() {
  fnm_update_to_14
}
function fnm_update_to_current() {
  fnm_update_to_16
}
function fnm_update_to_8() {
  fnm_update
  fnm default 8
  fnm use default
}
function fnm_update_to_10() {
  fnm_update
  fnm default 10
  fnm use default
}
function fnm_update_to_12() {
  fnm_update
  fnm default 12
  fnm use default
}
function fnm_update_to_14() {
  fnm_update
  fnm default 14
  fnm use default
}
function fnm_update_to_16() {
  fnm_update
  fnm default 16
  fnm use default
}
function fnm_update() {
  fnm install 8
  (
    fnm use 8
    npm install -g npm@latest yarn@latest typescript@latest gulp-cli@latest
    exit
  )
  fnm install 10
  (
    fnm use 10
    npm install -g npm@latest yarn@latest typescript@latest gulp-cli@latest
    exit
  )
  fnm install 12
  (
    fnm use 12
    npm install -g npm@latest yarn@latest typescript@latest gulp-cli@latest
    exit
  )
  fnm install 14
  (
    fnm use 14
    npm install -g npm@latest yarn@latest typescript@latest gulp-cli@latest
    exit
  )
  fnm install 16
  (
    fnm use 16
    npm install -g npm@latest yarn@latest typescript@latest gulp-cli@latest
    exit
  )
  fnm use default
  npm install -g npm@latest yarn@latest typescript@latest gulp-cli@latest

}

function cc_update() {
  conda update conda -y
  conda update --all -y
  rustup update
  rustc --version
}

all_update() {
  cc_update
  fnm_update
  dnf_update -y

}

update_nboot() {
  cc_update
  fnm_update
  dnf_update $1
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
