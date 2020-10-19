#† Scientia es lux principium✨™

#+ ZSH verry first entry point
#+ =============================================================================≈
#? MIT LICENSE ― *NOT* fit for any particular use or purpose ― PROVIDED "AS IS"
#? =============================================================================≈
#? @author Benjamin Vincent Kasapoglu (LUXCIUM)
#? @copyright © 2020 - LUXCIUM (Benjamin Vincent Kasapoglu) <luxcium@neb401.com>
#? @license MIT
#? =============================================================================≈
#? Scientia es lux principium✨ ™ - SEE THE BOTTOM OF THIS FILES FOR MORE INFO
#+ =============================================================================≈

# /etc/zsh/zshenv: system-wide .zshenv file for zsh(1).
#
# This file is sourced on all invocations of the shell.
# If the -f flag is present or if the NO_RCS option is set
# within this file, all other initialization files
# are skipped.
#
# This file should contain commands to set the command
# search path, plus other important environment variables.
# This file should not contain commands that produce
# output or assume the shell is attached to a tty.
#
# Global Order: zshenv, zprofile, zshrc, zlogin
#


#+ LOAD PATH
#+ =============================================================================≈
# . "${HOME}/.cache/ahmyzsh/path.env"
export TIMER_ALL_THEN=$(/usr/bin/date +%s%N)
export AHMYZSH_CACHE="${HOME}/.cache/ahmyzsh"
export PATH_ENV_CACHE="${AHMYZSH_CACHE}/path.env"
## load_path
. "${PATH_ENV_CACHE}"

#+ LET THERE BE LIGHT "יְהִי אוֹר" ...
#+ ECHO DELAY TO PATH
#+ =============================================================================≈
# 'LET THERE BE LIGHT " יְהִי־א֑וֹר "'
# "Au commencement, Dieu créa le ciel et la terre."
# "In the beginning of God's creation he created the heavens and the earth."
# "בְּרֵאשִׁית בָּרָא אֱלֹהִים אֵת הַשָּׁמַיִם וְאֵת הָאָרֶץ."
# "Dieu dit: "Que la lumière soit!" Et la lumière fut."
# "God said, “Let there be light”; and there was light."
# "וַיֹּאמֶר אֱלֹהִים יְהִי אוֹר וַיְהִי אוֹר."
if [[ -o interactive ]]; then
    # echo "\u001b[1m      רֹוא יִהְי \u001b[0m"
    # remove \ud83d\udca1 "💡"
    echo "\u001b[1m   \u05d9\u05b0\u05d4\u05b4\u05d9\u0020 \u05d0\u05d5\u05b9\u05e8\u200e\u0020     \u001b[0m"
    local TIMER_NOW=$(/usr/bin/date +%s%N)
    local TIMER_VALUE=$(((${TIMER_NOW} - ${TIMER_ALL_THEN}) / 1000000))
    echo "   ${TIMER_VALUE}ms  to  'PATH'"
fi

#+ - M A I N  -  B O O T S T R A P -
#+ =============================================================================≈
export AHMYZSH="${HOME}/ahmyzsh"
S1="${AHMYZSH}/MAIN.sh"
if [ -f "${S1}" ]; then
    . "${S1}"
    unset -v S1
    SCIENTIA_ES_LUX_PRINCIPIUM
    
else
    [[ -o interactive ]] &&
    echo "Error loading '${S1}'... File or path can not be resolved"
    unset -v S1
fi


# |----------------|-----------|-----------|------|
# |                |Interactive|Interactive|Script|
# |----------------|-----------|-----------|------|
# |                |login      |non-login  |      |
# |----------------|-----------|-----------|------|
# |/etc/zshenv     |    A      |    A      |  A   | ***
# |~/.zshenv       |    B      |    B      |  B   |
# |/etc/zprofile   |    C      |           |      |
# |~/.zprofile     |    D      |           |      |
# |/etc/zshrc      |    E      |    C      |      |
# |~/.zshrc        |    F      |    D      |      |
# |/etc/zlogin     |    G      |           |      |
# |~/.zlogin       |    H      |           |      |
# |                |           |           |      |
# |                |           |           |      |
# |~/.zlogout      |    I      |           |      |
# |/etc/zlogout    |    J      |           |      |
# |----------------|-----------|-----------|------|

# ==============================================================================≈
#† MIT LICENSE ― *NOT* fit for any particular use or purpose ― PROVIDED "AS IS"
#
#† Copyright © 2019-2020 Benjamin Vincent Kasapoglu (Luxcium)
#† and contributors (https://github.com/Luxcium/ahmyzsh/contributors)
#
# Permission is hereby granted, free of charge, to all person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ALL KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
# THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ALL CLAIM, DAMAGES OR
# OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
# ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
# DEALINGS IN THE SOFTWARE.
#
# -------------------------- !!! SECURITY WARNING !!! --------------------------≈
#! AUDIT ANY FILES YOU IMPORT FROM THIS PROJECT PRIOR: DOWNLOAD / INSTALL / USE
# Please asses security risks by yoursel befor to use the product and report
# any security issues or vulnerabilitie on the the main repo site issues page:
# [AHMYZSH project issues]{@link https://github.com/Luxcium/ahmyzsh/issues}
# ------------------------------------------------------------------------------
#† Scientia es lux principium✨™ is a Tread Mark of Benjamin Vincent Kasapoglu
#† © & ™ Benjamin Vincent Kasapoglu (Luxcium) 2017-2020
# ==============================================================================≈
