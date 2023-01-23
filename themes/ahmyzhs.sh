#!/bin/bash
# source "${AHMYZSH}/themes/colors.sh"

function LEADERBOARD() {

  # echo -e "${LGNS}1-------10--------20--------30--------40--------50--------60--------70--------80${CE}"
  BCOL="${BS}     ${COL}     "
  COLB="${COL}     ${BS}     "
  _HSIZE=$(stty size | cut -d" " -f2)
  ([ "${_HSIZE}" -ge "${MINIMU_SIZE_1}" ] && leaderOne) || ([ "${_HSIZE}" -ge "${MINIMU_SIZE_2}" ] && leaderTwo)
  # echo -e "${YS}# ${COL}>  ${LGNS}---10--------20--------30--------40--------50--------60--------70--------80${CE}"
  # Scientia es lux principium
}
# =
# echo -e "$COL
# 2.386 ms  to  'PATH'
# GNU General Public License v3.0
# https://github.com/arismelachroinos/lscript/blob/master/README.md
# LAZY script v2.1.4 Copyright (C) 2018 ARIS MELACHROINOS
# This program comes with ABSOLUTELY NO WARRANTY.
# This is free software, and you are welcome to redistribute it
# under certain conditions.

function leaderOne() {
  echo -e "\u001b[3A"
  # echo -e "${COL}                                                                                ${CE}"
  echo -e "${BCOL}${BCOL}${BCOL}${BCOL}${BCOL}${BCOL}${BCOL}${BCOL}${CE}"
  echo -e "${COL}         ${RS}${bold}Scientia es lux principium™${normal}${COL}                                            ${CE}"
  echo -e "${COL}                                                ${BS}${TIME_TO_PATH_STR}$COL            ${CE}"
  echo -e "${COL}         █████╗ ██╗  ██╗  ███╗   ███╗██╗   ██╗  ███████╗███████╗██╗  ██╗        ${CE}"
  echo -e "${COL}        ██╔══██╗██║  ██║  ████╗ ████║╚██╗ ██╔╝  ╚══███╔╝██╔════╝██║  ██║        ${CE}"
  echo -e "${COL}        ███████║███████║  ██╔████╔██║ ╚████╔╝     ███╔╝ ███████╗███████║        ${CE}"
  echo -e "${COL}        ██╔══██║██╔══██║  ██║╚██╔╝██║  ╚██╔╝     ███╔╝  ╚════██║██╔══██║        ${CE}"
  echo -e "${COL}        ██║  ██║██║  ██║  ██║ ╚═╝ ██║   ██║     ███████╗███████║██║  ██║        ${CE}"
  echo -e "${COL}        ╚═╝  ╚═╝╚═╝  ╚═╝  ╚═╝     ╚═╝   ╚═╝     ╚══════╝╚══════╝╚═╝  ╚═╝        ${CE}"
  echo -e "${COL}        ${START_UP_TIME}${COL}                                                    ${CE}"
  echo -e "${COL}                                                ${bold}${WHS}by${COL}  ${YS}L·U·X·C·I·U·M${COL}               ${CE}"
  echo -e "${COLB}${COLB}${COLB}${COLB}${COLB}${COLB}${COLB}${COLB}${CE}"

}

function leaderTwo() {
  _SPACER=" "
  _SPACE="$((((($(stty size | cut -d' ' -f2) - 40) / 2) - 1)))"
  [ "${_SPACE}" -ge "11" ] && _SPACE="$(((_SPACE / 2)))"
  [ "${_SPACE}" -ge "0" ] && _SP=" "
  _Sx=$(perl -E "say '${_SPACER}' x ${_SPACE}")

  echo "${_SP}${_Sx}${BCOL}${BCOL}${BCOL}${BCOL}${CE}"                                                   #${_Sx} "
  echo "${_SP}${_Sx}${COL}${RS}${bold} Scientia es lux principium™${normal}${RS}            ${COL}${CE}" #${_Sx}${_SP}"
  echo "${_SP}${_Sx}${COL}${BS}                   ${TIME_TO_PATH_STR} $COL${CE}"                         #${_Sx}${_SP}"
  echo "${_SP}${_Sx}${COL}   ▄▀▄ █▄█   █▄ ▄█ ▀▄▀   ▀█▀ ▄▀▀ █▄█    ${CE}"                                 #${_Sx}${_SP}"
  echo "${_SP}${_Sx}${COL}   █▀█ █ █   █ ▀ █  █    █▄▄ ▄██ █ █    ${CE}"                                 #${_Sx}${_SP}"
  echo "${_SP}${_Sx}                                        "                                            #${_Sx}${_SP}"
  echo "${_SP}${_Sx}${COL} ${START_UP_TIME}${COL}                   ${CE}"                               #${_Sx}${_SP}"
  echo "${_SP}${_Sx}${YS}                      ${bold}${WHS}by${YS}  ${YS}L·U·X·C·I·U·M${YS}${YS} ${CE}" #${_Sx}${_SP}"
  echo "${_SP}${_Sx}${COLB}${COLB}${COLB}${COLB}${CE}"                                                   #${_Sx}${_SP}"
}

MINIMU_SIZE_1=85
MINIMU_SIZE_2=40
bold='\u001b[1m'
normal='\u001b[0m'

# #black start
# BLS="\e[0;30m"
# #dark gray start
# DGYS="\e[1;30m"
# #light blue start
# LBS="\e[1;34m"
# #green start
# GNS="\e[0;32m"
# #light green start
# LGNS="\e[1;32m"
# #cyan start
# CYS="\e[0;36m"
# #light cyan start
# LCYS="\e[1;36m"
# #light red start
# DRS="\e[0;31m"
# #purple start
# PS="\e[0;35m"
## light purple start
# LPS="\e[0;35m"
# #brown start
# BRS="\e[0;33m"
# #light gray start
# LGYS="\e[0;37m"

#yellow start
YS="\e[1;33m"
#blue start
BS="\e[0;34m"
#color end
CE="\e[0m"
#red start
RS="\e[1;31m"
#white start
WHS="\e[1;37m"

#setting yellow-start
YS="\e[1;33m"
#setting color-end
CE="\e[0m"
#setting red-start
RS="\e[0;31m"
#setting purple start
LPS="\e[0;35m"
#color start
islogin && COL=$LPS
islogin || COL=$RS

# islogin &&
LEADERBOARD

#setting frequent strings
# YNYES="("$YS"y"$CE"/"$YS"n"$CE")("$YS"Enter"$CE"=yes)"
# YNNO="("$YS"y"$CE"/"$YS"n"$CE")("$YS"Enter"$CE"=no)"
# YNONLY="("$YS"y"$CE"/"$YS"n"$CE")"
# PAKT="Press "$YS"any key$CE to"
# PAKTC="Press "$YS"any key$CE to continue..."
# PAKTGB="Press "$YS"any key$CE to go back..."

# by  L·U·X·C·I·U·M
# echo -e ""
# VERSION="2.1.4"
# # color end
# CE="\e[0m"
# # red start
# RS="\e[1;31m"
# COL=$RS
# echo -e "$COL         ██╗      █████╗ ███████╗██╗   ██╗$CE v$VERSION"
# echo -e "$COL         ██║     ██╔══██╗╚══███╔╝╚██╗ ██╔╝$CE"
# echo -e "$COL         ██║     ███████║  ███╔╝  ╚████╔╝ $CE   by "$COL"ARIS MELACHROINOS$CE"
# echo -e "$COL         ██║     ██╔══██║ ███╔╝    ╚██╔╝  $CE"
# echo -e "$COL    The  ███████╗██║  ██║███████╗   ██║  script$CE"
# echo -e "$COL         ╚══════╝╚═╝  ╚═╝╚══════╝   ╚═╝   $CE"

# #black start
# BLS="\e[0;30m"
# #dark gray start
# DGYS="\e[1;30m"
# #light blue start
# LBS="\e[1;34m"
# #green start
# GNS="\e[0;32m"
# #light green start
# LGNS="\e[1;32m"
# #cyan start
# CYS="\e[0;36m"
# #light cyan start
# LCYS="\e[1;36m"
# #light red start
# DRS="\e[0;31m"
# #purple start
# PS="\e[0;35m"
# #light purple start
# LPS="\e[1;35m"
# #brown start
# BRS="\e[0;33m"
# #light gray start
# LGYS="\e[0;37m"

# #black start
# BLS="\e[0;30m"
# #dark gray start
# DGYS="\e[1;30m"
# #light blue start
# LBS="\e[1;34m"
# #green start
# GNS="\e[0;32m"
# #light green start
# LGNS="\e[1;32m"
# #cyan start
# CYS="\e[0;36m"
# #light cyan start
# LCYS="\e[1;36m"
# #light red start
# DRS="\e[0;31m"
# #purple start
# PS="\e[0;35m"
# #light purple start
# LPS="\e[1;35m"
# #brown start
# BRS="\e[0;33m"
# #light gray start
# LGYS="\e[0;37m"
