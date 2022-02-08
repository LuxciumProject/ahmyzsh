## High-intensity background colors
export Black256b='\u001b[48;5;8m'   #? 8_b
export Red256b='\u001b[48;5;9m'     #? 9_b
export Green256b='\u001b[48;5;10m'  #? 10_b
export Yellow256b='\u001b[48;5;11m' #? 11_b
export Blue256b='\u001b[48;5;12m'   #? 12_b
export Purple256b='\u001b[48;5;13m' #? 13_b
export Cyan256b='\u001b[48;5;14m'   #? 14_b
export White256b='\u001b[48;5;15m'  #? 15_b

export termBackground="\u001b[38;2;31;27;24m"
export termBorder="\u001b[38;2;119;17;102m"
export termForeground="\u001b[38;2;196;189;181m"
export cursorBackground="\u001b[38;2;41;21;58m"
export cursorForeground="\u001b[38;2;255;51;51m"
export selectionBackground="\u001b[38;2;51;34;119m"

export ansiBlack="\u001b[38;2;26;10;42m"
export ansiRed="\u001b[38;2;238;51;34m"
export ansiGreen="\u001b[38;2;136;153;34m"
export ansiYellow="\u001b[38;2;238;153;34m"
export ansiBlue="\u001b[38;2;68;136;153m"
export ansiMagenta="\u001b[38;2;187;85;153m"
export ansiCyan="\u001b[38;2;104;170;119m"
export ansiWhite="\u001b[38;2;204;187;170m"

export ansiBrightBlack="\u001b[38;2;136;119;102m"
export ansiBrightRed="\u001b[38;2;255;34;68m"
export ansiBrightGreen="\u001b[38;2;187;204;51m"
export ansiBrightYellow="\u001b[38;2;255;170;51m"
export ansiBrightBlue="\u001b[38;2;153;204;221m"
export ansiBrightMagenta="\u001b[38;2;221;102;136m"
export ansiBrightCyan="\u001b[38;2;136;238;153m"
export ansiBrightWhite="\u001b[38;2;221;204;170m"

export ansiBlackFG="\u001b[48;2;26;10;42m"
export ansiRedFG="\u001b[48;2;238;51;34m"
export ansiBlueFG="\u001b[48;2;68;136;153m"
export ansiGreenFG="\u001b[48;2;136;153;34m"
export ansiCyanFG="\u001b[48;2;104;170;119m"
export ansiYellowFG="\u001b[48;2;238;153;34m"
export ansiMagentaFG="\u001b[48;2;187;85;153m"
export ansiWhiteFG="\u001b[48;2;204;187;170m"

export ansiBrightBlackFG="\u001b[48;2;136;119;102m"
export ansiBrightRedFG="\u001b[48;2;255;34;68m"
export ansiBrightBlueFG="\u001b[48;2;153;204;221m"
export ansiBrightGreenFG="\u001b[48;2;187;204;51m"
export ansiBrightCyanFG="\u001b[48;2;136;238;153m"
export ansiBrightYellowFG="\u001b[48;2;255;170;51m"
export ansiBrightMagentaFG="\u001b[48;2;221;102;136m"
export ansiBrightWhiteFG="\u001b[48;2;221;204;170m"

export FG30b="${ansiBlack}"
export FG31r="${ansiRed}"
export FG32g="${ansiGreen}"
export FG33y="${ansiYellow}"
export FG34b="${ansiBlue}"
export FG35m="${ansiMagenta}"
export FG36c="${ansiCyan}"
export FG37w="${ansiWhite}"

export BG40b="${ansiBrightBlack}"
export BG41r="${ansiBrightRed}"
export BG42g="${ansiBrightGreen}"
export BG43y="${ansiBrightYellow}"
export BG44b="${ansiBrightBlue}"
export BG45m="${ansiBrightMagenta}"
export BG46c="${ansiBrightCyan}"
export BG47w="${ansiBrightWhite}"

export BFG90b="${ansiBlackFG}"
export BFG91r="${ansiRedFG}"
export BFG92g="${ansiBlueFG}"
export BFG93y="${ansiGreenFG}"
export BFG94b="${ansiCyanFG}"
export BFG95m="${ansiYellowFG}"
export BFG96c="${ansiMagentaFG}"
export BFG97w="${ansiWhiteFG}"

export BBG100b="${ansiBrightBlackFG}"
export BBG101r="${ansiBrightRedFG}"
export BBG102g="${ansiBrightBlueFG}"
export BBG103y="${ansiBrightGreenFG}"
export BBG104b="${ansiBrightCyanFG}"
export BBG105m="${ansiBrightYellowFG}"
export BBG106c="${ansiBrightMagentaFG}"
export BBG107w="${ansiBrightWhiteFG}"

# GNU General Public License v3.0
# https://github.com/arismelachroinos/lscript/blob/master/README.md
# LAZY script v2.1.4 Copyright (C) 2018 ARIS MELACHROINOS
# This program comes with ABSOLUTELY NO WARRANTY.
# This is free software, and you are welcome to redistribute it
# under certain conditions.
source /home/luxcium/ahmyzsh/core/layouts/00000-layouts.sh
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

# #yellow start
# YS="\e[1;33m"
# #blue start
# BS="\e[0;34m"
# #color end
# CE="\e[0m"
# #red start
# RS="\e[1;31m"
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
# #white start
# WHS="\e[1;37m"

# #color end
# CE="\e[0m"
# #color start
# COL=$DRS

# #yellow start
# YS="\e[1;33m"
# #blue start
# BS="\e[0;34m"
# #color end
# CE="\e[0m"
# #red start
# RS="\e[1;31m"
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
# #white start
# WHS="\e[1;37m"

# #setting yellow-start
# YS="\e[1;33m"
# #setting color-end
# CE="\e[0m"
# #setting red-start
# RS="\e[1;31m"

# #setting frequent stings
# YNYES="("$YS"y"$CE"/"$YS"n"$CE")("$YS"Enter"$CE"=yes)"
# YNNO="("$YS"y"$CE"/"$YS"n"$CE")("$YS"Enter"$CE"=no)"
# YNONLY="("$YS"y"$CE"/"$YS"n"$CE")"
# PAKT="Press "$YS"any key$CE to"
# PAKTC="Press "$YS"any key$CE to continue..."
# PAKTGB="Press "$YS"any key$CE to go back..."
