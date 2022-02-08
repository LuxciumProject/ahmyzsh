# Current or LTS
#  typescript@latest gulp-cli@latest ts-node@latest vsce@latest jest@latest
#  typescript@latest gulp-cli@latest ts-node@latest prettier@latest jest@latest
PACKAGES_NPM='corepack@latest gulp-cli@latest jest@latest n@latest node@latest node-gyp@latest npm@latest prettier@latest ts-node@latest typescript@latest vsce@latest yarn@latest'

function _npm_update() {
    echo ''
    echo npm version $(npm --version)
    echo ''
    npm install -g $(echo ${PACKAGES_NPM})
    echo ''
    compute_pl10K_now
    echo npm version $(npm --version)
    echo TypeScript $(tsc -v)
    echo NodeJS $(node -v)
    echo ''
}

function fnm_update_to_lts() {
    fnm_update_to_16
}

function fnm_update_to_current() {
    fnm_update_to_17
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

function fnm_update_to_17() {
    fnm install 17
    fnm default 17
    fnm use default
    _npm_update
}

function cc_update() {
    conda update conda -y
    conda update --all -y
}

function dnf_downloadonly() {
    echo 'dnf makecache --refresh'
    echo 'dnf upgrade --downloadonly'
    (
        (
            (
                sudo nice -15 ionice -c 1 -n 2 dnf makecache --refresh --assumeyes
                sudo nice -n -15 ionice -c 1 -n 2 dnf upgrade --downloadonly --setopt=keepcache=1 --assumeyes
            ) &
        ) >/dev/null
    ) 2>/dev/null
}

all_update() {
    dnf_downloadonly
    cc_update
    sudo rustup update
    rustc --version
    sudo dnf update --assumeyes
    fnm_update_to_14
    fnm_update_to_16
    fnm_update_to_17
    yarn global add $(echo $PACKAGES_NPM)
}

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
