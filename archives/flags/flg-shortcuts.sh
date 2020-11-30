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
function init_flags() {

    source ${ZSH_FLAGS}/flg-AUTO_LOAD_ALL.sh
    source ${ZSH_FLAGS}/flg-GNU_COREUTILS.sh
    source ${ZSH_FLAGS}/flg-TMUX_START.sh

    AUTO_LOAD_ALL='true'
    GNU_COREUTILS='true'
    TMUX_START='true'

    if [ -f ${ZSH_FLAGS_VALUES}/.AUTO_LOAD_ALL ]; then
        source ${ZSH_FLAGS_VALUES}/.AUTO_LOAD_ALL
    fi

    if [ -f ${ZSH_FLAGS_VALUES}/.GNU_COREUTILS ]; then
        source ${ZSH_FLAGS_VALUES}/.GNU_COREUTILS
    fi

    if [ -f ${ZSH_FLAGS_VALUES}/.TMUX_START ]; then
        source ${ZSH_FLAGS_VALUES}/.TMUX_START
    fi

    function reload() {
        AUTO_LOAD_ALL_ON
    }

    function deload() {
        AUTO_LOAD_ALL_OFF
    }

    function loadon() {
        AUTO_LOAD_ALL_ON
    }

    function loadoff() {
        AUTO_LOAD_ALL_OFF
    }

    # function nv-mon() {
    #     AUTO_LOAD_nv-m_ON
    # }

    # function nv-moff() {
    #     AUTO_LOAD_nv-m_OFF
    # }

    function gnuon() {
        GNU_COREUTILS_ON
    }

    function gnuoff() {
        GNU_COREUTILS_OFF
    }

    function tmxon() {
        TMUX_START_ON
        renew
        echo -n "${normal}$CLRLN$BYL9K_GNU$(tput setaf 2) $COG_ICO ${bold} $(tput setaf 2)TMUX AUTO START$(tput setaf 2) will NOW be in function${BKBK}${normal}\n"

    }

    function tmxoff() {
        TMUX_START_OFF
        renew
        echo -n "${normal}$CLRLN$BYL9K_GNU$(tput setaf 2) $COG_ICO ${bold} $(tput setaf 2)TMUX AUTO START$(tput setaf 1) will NOT be in function${BKBK}${normal}\n"

    }

    function allon() {
        echo "AUTO_LOAD_ALL='true'" >${ZSH_FLAGS_VALUES}/.AUTO_LOAD_ALL
        source ${ZSH_FLAGS_VALUES}/.AUTO_LOAD_ALL
        # echo "AUTO_LOAD_nv-m='true'" >${ZSH_FLAGS_VALUES}/.AUTO_LOAD_nv-m
        # source "${ZSH_FLAGS_VALUES}/.AUTO_LOAD_nv-m"
        # source "${PATH_ZSH_FUNCTIONS}/load_nv-m.zsh"
        echo "GNU_COREUTILS='true'" >${ZSH_FLAGS_VALUES}/.GNU_COREUTILS
        source ${ZSH_FLAGS_VALUES}/.GNU_COREUTILS
        zsh

    }
    function alloff() {
        echo "AUTO_LOAD_ALL='false'" >${ZSH_FLAGS_VALUES}/.AUTO_LOAD_ALL
        source ${ZSH_FLAGS_VALUES}/.AUTO_LOAD_ALL
        export COMPUTE_POWERLEVEL9K_ON='false'
        # echo "AUTO_LOAD_nv-m='false'" >"${ZSH_FLAGS_VALUES}/.AUTO_LOAD_nv-m"
        # source "${ZSH_FLAGS_VALUES}/.AUTO_LOAD_nv-m"
        # source "${PATH_ZSH_FUNCTIONS}/load_nv-m.zsh"
        echo "GNU_COREUTILS='false'" >${ZSH_FLAGS_VALUES}/.GNU_COREUTILS
        source ${ZSH_FLAGS_VALUES}/.GNU_COREUTILS
        # zsh
    }

    # AUTO_LOAD_nv-m='true'

    # if [ -f ${ZSH_FLAGS_VALUES}/.AUTO_LOAD_nv-m ]; then
    # source ${ZSH_FLAGS_VALUES}/.AUTO_LOAD_nv-m
    # fi
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
