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

function hardcls() {
    echo -n '\u001b[2J'
    echo -n '\u001b[0;0H'
}

function base_layouts() {

    export FNR='\u001b[31m' # Red: \u001b[31m
    export FNG='\u001b[32m' # Green: \u001b[32m
    export FNY='\u001b[33m' # Yellow: \u001b[33m

    export FBR='\u001b[31;1m' # Bright Red: \u001b[31;1m
    export FBG='\u001b[32;1m' # Bright Green: \u001b[32;1m
    export FBY='\u001b[33;1m' # Bright Yellow: \u001b[33;1m

    export H_SYM="#  "
    export LD_COLR="\u001b[0m\u001b[34m"
    export LD_FN_COLR="${LD_COLR}"
    export LD_ICO_COLR="\u001b[0m\u001b[33m"
    export LD_ICO_COLR_0="\u001b[0m${FBG}"
    export LD_ICO_COLR_1="\u001b[0m${FBY}"
    export LD_ICO_COLR_2="\u001b[0m${FBR}"
    export LD_ICO_COLR_OFF="\u001b[0m\u001b[34m"
    export LD_FN_ICO_COLR="\u001b[0m\u001b[35;1m"

    export COG_ICO='\uf013'       #// \uf013  COG_ICO
    export FNCT_ICO='\uf794'      #// \uf794  FNCT_ICO
    export LIGHTBULB="\uf835"     #// \uf835  LIGHTBULB
    export LIGHTBULB_ON="\uf834"  #// \uf834  LIGHTBULB_ON
    export HOURGLASS_END="\uf253" #// \uf253  HOURGLASS_END

    export LD_ICO="${LD_ICO_COLR}${COG_ICO}${LD_COLR}"
    export LD_FN_ICO="${LD_FN_ICO_COLR}${FNCT_ICO}${LD_FN_COLR}"
    export LBULB_ICO="${LD_ICO_COLR_OFF}${LIGHTBULB}${LD_COLR}"
    export LBULB_ON_ICO="${LD_ICO_COLR}${LIGHTBULB_ON}${LD_COLR}"
    export HOURGLASS_END_ICO_0="${LD_ICO_COLR_0}${HOURGLASS_END}${LD_COLR}"
    export HOURGLASS_END_ICO_1="${LD_ICO_COLR_1}${HOURGLASS_END}${LD_COLR}"
    export HOURGLASS_END_ICO_2="${LD_ICO_COLR_2}${HOURGLASS_END}${LD_COLR}"

    export BEGIN_SOURCING="${LD_COLR} ${H_SYM} ${LD_ICO}  >"
    export BEGIN_FUNCTION="${LD_FN_COLR} ${H_SYM} ${LD_FN_ICO}  >"
    export BEGIN_LBULB="${LD_COLR} ${H_SYM} ${LBULB_ICO}   "
    export BEGIN_LBULB_ON="${LD_COLR} ${H_SYM} ${LBULB_ON_ICO}   "
    export BEGIN_HOURGLASS_END_0="${LD_COLR} ${H_SYM} ${HOURGLASS_END_ICO_0}   "
    export BEGIN_HOURGLASS_END_1="${LD_COLR} ${H_SYM} ${HOURGLASS_END_ICO_1}   "
    export BEGIN_HOURGLASS_END_2="${LD_COLR} ${H_SYM} ${HOURGLASS_END_ICO_2}   "

    export END_SOURCING="\u001b[0m\u001b[31;1m${LBOLD}"
    export END_FUNCTION="${END_SOURCING}"

}

function my_envs() {

    : ${ENV_LOADED:="false"}
    : ${SHOW_LOAD_CUTLS:="true"}

    # echo 'LET THERE BE LIGHT ...'

    export EDITOR='code'
    export VERBOSA="false"

    local S1="${AHMYZSH}/paths.sh"
    . "${S1}"
    init_paths
}

function lux_principium() {
    # 'LET THERE BE LIGHT ...'
    # reversed יְהִי אוֹר due to lack of support in my terminal
    # https://en.wikipedia.org/wiki/Let_there_be_light
    base_layouts
    echo "${BEGIN_LBULB} LET THERE BE LIGHT ... ${END_SOURCING}"
    echo "${BEGIN_LBULB_ON} רֹוא יִהְי ${END_SOURCING}"

    my_envs

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
