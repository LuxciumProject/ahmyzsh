################################################################################
##                                                                            ##
##              !!! PLEASE USE CAUTION WHEN USING THIS FILE !!!               ##
##                                                                            ##
##  THIS FILE CANNOT BE USED AS IS YOU MAY HAVE TO CUSTOMISE IT TO USE IT.    ##
##  Even if this file is shared on my public git hub it has not been designed ##
##  for public use. It was not created with the idea that someone else would  ##
##  be using it. The files in this repository have been created for my usage  ##
##  only. They are available so you can see how I have customized my system.  ##
##  I decided to put them in the public space so anyone can download them     ##
##  and edit them. I hope this can inspire someone or serve as a reference.   ##
##                                                                            ##
#+           Copyright (c) 2019-present Benjamin Vincent Kasapoglu            ##
#&                                                                            ##
#&     This Source Code Form is subject to the terms of the Mozilla Public    ##
#&     License, v. 2.0. If a copy of the MPL was not distributed with this    ##
#&           file, You can obtain one at http://mozilla.org/MPL/2.0/.         ##
#&                                                                            ##
##     The above copyright notice and this license notice shall be included   ##
##           in all copies or substantial portions of the Software.           ##
##                                                                            ##
################################################################################

# reversed יְהִי אוֹר due to lack of support in my terminal
echo "      \u001b[1m    רֹוא יִהְי \u001b[0m" # 'LET THERE BE LIGHT ...'
# https://en.wikipedia.org/wiki/Let_there_be_light

function my_envs() {

    : ${ENV_LOADED:="false"}
    : ${SHOW_LOAD_CUTLS:="true"}

    export EDITOR='code'
    export VERBOSA="false"

    local S1="${AHMYZSH}/paths.sh"
    . "${S1}"
    init_paths

    export BASE_LAYOUTS="${ZSH_SOURCES}/layouts/base-layouts.sh"
    . ${BASE_LAYOUTS}
    load_layouts

    function timer_() {
        local TIMER_NOW=$(/usr/local/bin/gdate +%s%N)
        local TIMER_VALUE=$(((${TIMER_NOW} - ${1}) / 1000000))

        echo "${TIMER_VALUE} "
        return 0
    }

    function timer_now() {
        # local TIMER_NOW=$(/usr/local/bin/gdate +%s%N)
        # local TIMER_VALUE=$(((${TIMER_NOW} - ${TIMER_THEN}) / 1000000))
        timer_ "${TIMER_THEN}"
        # echo -n "${TIMER_VALUE} "
        # return 0
    }

    function timer_all() {
        # local TIMER_NOW=$(/usr/local/bin/gdate +%s%N)
        # local TIMER_VALUE=$(((${TIMER_NOW} - ${TIMER_ALL_THEN}) / 1000000))
        timer_ "${TIMER_ALL_THEN}"
        # echo -n "${TIMER_VALUE} "
        # return 0
    }
}

function lux_principium() {

    my_envs
    # echo 'LET THERE BE LIGHT ...'
    echo "${BEGIN_LBULB_ON}> LET THERE BE LIGHT ... ${END_SOURCING}"

    local S1="${CUSTOM_ZSH}/MAIN.zsh"
    . "${S1}"
    source_all

}

##!!0###########################################################################
##!!                                                                          ##
#+!!         Copyright (c) 2019-present Benjamin Vincent Kasapoglu            ##
#&!!                                                                          ##
#&!!   This Source Code Form is subject to the terms of the Mozilla Public    ##
#&!!   License, v. 2.0. If a copy of the MPL was not distributed with this    ##
#&!!         file, You can obtain one at http://mozilla.org/MPL/2.0/.         ##
#&!!                                                                          ##
##!!   The above copyright notice and this license notice shall be included   ##
##!!         in all copies or substantial portions of the Software.           ##
##!!                                                                          ##
##!!          ------------------------------------------------------          ##
##!!                                                                          ##
##!!    Disclaimer of Warranty                                                ##
##!!   -------------------------                                              ##
##!!                                                                          ##
##!!   Covered Software is provided under this License on an "as is"          ##
##!!   basis, without warranty of any kind, either expressed, implied, or     ##
##!!   statutory, including, without limitation, warranties that the          ##
##!!   Covered Software is free of defects, merchantable, fit for a           ##
##!!   particular purpose or non-infringing. The entire risk as to the        ##
##!!   quality and performance of the Covered Software is with You.           ##
##!!   Should any Covered Software prove defective in any respect, You        ##
##!!   (not any Contributor) assume the cost of any necessary servicing,      ##
##!!   repair, or correction. This disclaimer of warranty constitutes an      ##
##!!   essential part of this License. No use of any Covered Software is      ##
##!!   authorized under this License except under this disclaimer.            ##
##!!                                                                          ##
##!!0###########################################################################
