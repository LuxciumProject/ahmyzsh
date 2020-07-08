function base_layouts_colors() {
    export FBK='\u001b[30m' # BK Black: \u001b[30m
    export FRD='\u001b[31m' # RD Red: \u001b[31m
    export FGR='\u001b[32m' # GR Green: \u001b[32m
    export FYL='\u001b[33m' # YL Yellow: \u001b[33m
    export FBL='\u001b[34m' # BL Blue: \u001b[34m
    export FMG='\u001b[35m' # MG Magenta: \u001b[35m
    export FCY='\u001b[36m' # CY Cyan: \u001b[36m
    export FWH='\u001b[37m' # WH White: \u001b[37m

    export FBK_='\u001b[30;1m' # BK Bright Black: \u001b[30;1m
    export FRD_='\u001b[31;1m' # RD Bright Red: \u001b[31;1m
    export FGR_='\u001b[32;1m' # GR Bright Green: \u001b[32;1m
    export FYL_='\u001b[33;1m' # YL Bright Yellow: \u001b[33;1m
    export FBL_='\u001b[34;1m' # BL Bright Blue: \u001b[34;1m
    export FMG_='\u001b[35;1m' # MG Bright Magenta: \u001b[35;1m
    export FCY_='\u001b[36;1m' # CY Bright Cyan: \u001b[36;1m
    export FWH_='\u001b[37;1m' # WH Bright White: \u001b[37;1m

    export BBK='\u001b[40m' # BK Background Black: \u001b[40m
    export BRD='\u001b[41m' # RD Background Red: \u001b[41m
    export BGR='\u001b[42m' # GR Background Green: \u001b[42m
    export BYL='\u001b[43m' # YL Background Yellow: \u001b[43m
    export BBL='\u001b[44m' # BL Background Blue: \u001b[44m
    export BMG='\u001b[45m' # MG Background Magenta: \u001b[45m
    export BCY='\u001b[46m' # CY Background Cyan: \u001b[46m
    export BWH='\u001b[47m' # WH Background White: \u001b[47m

    export BBK_='\u001b[40;1m' # BK Bright Background Black: \u001b[40;1m
    export BRD_='\u001b[41;1m' # RD Bright Background Red: \u001b[41;1m
    export BGR_='\u001b[42;1m' # GR Bright Background Green: \u001b[42;1m
    export BYL_='\u001b[43;1m' # YL Bright Background Yellow: \u001b[43;1m
    export BBL_='\u001b[44;1m' # BL Bright Background Blue: \u001b[44;1m
    export BMG_='\u001b[45;1m' # MG Bright Background Magenta: \u001b[45;1m
    export BCY_='\u001b[46;1m' # CY Bright Background Cyan: \u001b[46;1m
    export BWH_='\u001b[47;1m' # WH Bright Background White: \u001b[47;1m
    base_layouts_colors_olds
}

function base_layouts_colors_olds() {
    export BKBG='\u001b[40m'
    export BKFG='\u001b[30m'
    export YKBG='\u001b[43m'
    export YKFG='\u001b[33m'

    export BBCOLR="$BKFG$YKBG"
    export YBCOLR="$BKBG$YKFG"
    export BKBK="$BKBG$BKFG"

    export FNK='\u001b[30m' # Black: \u001b[30m
    export FNR='\u001b[31m' # Red: \u001b[31m
    export FNG='\u001b[32m' # Green: \u001b[32m
    export FNY='\u001b[33m' # Yellow: \u001b[33m
    export FNB='\u001b[34m' # Blue: \u001b[34m
    export FNM='\u001b[35m' # Magenta: \u001b[35m
    export FNC='\u001b[36m' # Cyan: \u001b[36m
    export FNW='\u001b[37m' # White: \u001b[37m

    export FBK='\u001b[30;1m' # Bright Black: \u001b[30;1m
    export FBR='\u001b[31;1m' # Bright Red: \u001b[31;1m
    export FBG='\u001b[32;1m' # Bright Green: \u001b[32;1m
    export FBY='\u001b[33;1m' # Bright Yellow: \u001b[33;1m
    export FBB='\u001b[34;1m' # Bright Blue: \u001b[34;1m
    export FBM='\u001b[35;1m' # Bright Magenta: \u001b[35;1m
    export FBC='\u001b[36;1m' # Bright Cyan: \u001b[36;1m
    export FBW='\u001b[37;1m' # Bright White: \u001b[37;1m

    export BNK='\u001b[40m' # Background Black: \u001b[40m
    export BNR='\u001b[41m' # Background Red: \u001b[41m
    export BNG='\u001b[42m' # Background Green: \u001b[42m
    export BNY='\u001b[43m' # Background Yellow: \u001b[43m
    export BNB='\u001b[44m' # Background Blue: \u001b[44m
    export BNM='\u001b[45m' # Background Magenta: \u001b[45m
    export BNC='\u001b[46m' # Background Cyan: \u001b[46m
    export BNW='\u001b[47m' # Background White: \u001b[47m

    export BBK='\u001b[40;1m' # Background Bright Black: \u001b[40;1m
    export BBR='\u001b[41;1m' # Background Bright Red: \u001b[41;1m
    export BBG='\u001b[42;1m' # Background Bright Green: \u001b[42;1m
    export BBY='\u001b[43;1m' # Background Bright Yellow: \u001b[43;1m
    export BBB='\u001b[44;1m' # Background Bright Blue: \u001b[44;1m
    export BBM='\u001b[45;1m' # Background Bright Magenta: \u001b[45;1m
    export BBC='\u001b[46;1m' # Background Bright Cyan: \u001b[46;1m
    export BBW='\u001b[47;1m' # Background Bright White: \u001b[47;1m
}

function base_layouts_cursors_moves() {

    # The most basic of these moves your cursor up, down, left or right:

    # Up: \u001b[{n}A
    # Down: \u001b[{n}B
    # Right: \u001b[{n}C
    # Left: \u001b[{n}D

    export LUP_A='\u001b['    # Up: \u001b[{n}A moves cursor up by n \u001b[{3}A
    export LDOWN_B='\u001b['  # Down: \u001b[{n}B moves cursor down by n
    export LRIGHT_C='\u001b[' # Right: \u001b[{n}C moves cursor right by n
    export LLEFT_D='\u001b['  # Left: \u001b[{n}D moves cursor left by n

    export LNX_E='\u001b['    # Next Line: \u001b[{n}E moves cursor to beginning of line n lines down
    export LPV_F='\u001b['    # Prev Line: \u001b[{n}F moves cursor to beginning of line n lines up
    export LCOL_G='\u001b['   # Set Column: \u001b[{n}G moves cursor to column n
    export LPOSRC_H='\u001b[' # Set Position: \u001b[{n};{m}H moves cursor to row n column m

    export LCS0='\u001b[0J' # Clear Screen: \u001b[{n}J n=0 clears from cursor until end of screen,
    export LCS1='\u001b[1J' # Clear Screen: \u001b[{n}J n=1 clears from cursor to beginning of screen
    export LCS2='\u001b[2J' # Clear Screen: \u001b[{n}J n=2 clears entire screen

    export LCL0='\u001b[0K' # Clear Line: \u001b[{n}K n=0 clears from cursor to end of line
    export LCL1='\u001b[1K' # Clear Line: \u001b[{n}K n=1 clears from cursor to start of line
    export LCL2='\u001b[2K' # Clear Line: \u001b[{n}K n=2 clears entire line

    export SPS='\u001b[s' # Save Position: \u001b[{s} saves the current cursor position
    export RPS='\u001b[u' # Save Position: \u001b[{u} restores the cursor to the last saved position

    export PZTX='\u001b[1;0H'
    export PZT='\u001b[2;0H'
    export PZTED='\u001b[0;50H'
    export CLRZ='\u001b[2J'
    export DW="${LDOWN_B}1B"
    export UPW="${LUP_A}1A"
    export CLRLN='\u001b[2K \u001b[0G'
    export RWT='\u001b[54C'
    export RWTT='\u001b[10C'
}

function base_layouts_icons() {
    export APPLE_ICO='\uf179'
    export TERM_ICO='\uf120'
    export TS_ICO='\ufbe4'
    export JS_ICO='\uf81d'
    export NODE_ICO='\ue718'
    export COG_ICO='\uf013'
    export COGS_ICO='\uf085'
    export COGS_ICO_X=$(echo '\uf085')
    export WARN_ICO='\uf071'
    export GNU_ICO='\ue779'
    export NPM_ICO='\ue71e'
    export NPM_FOLDER_ICO='\ue5fa'

    export separator1='e0bc' # 
    export separator2='e0b8' # 
    export separator3='e0b0' # 
    export U='\u'
    export e0ba=e0ba

    export H_SYM="#  "
    export LD_COLR="\u001b[0m\u001b[34m"
    export LD_COLR="\u001b[0m\u001b[34m"
    export LD_FN_COLR="${LD_COLR}"

    export LIGHTBULB="\uf835"     #// \uf835  LIGHTBULB
    export LIGHTBULB_ON="\uf834"  #// \uf834  LIGHTBULB_ON
    export HOURGLASS_END="\uf253" #// \uf253  HOURGLASS_END

    export END_SOURCING="\u001b[0m\u001b[31;1m${LBOLD}"
    export END_FUNCTION="${END_SOURCING}"

}

function base_layouts_icons_groups() {
    export LEFT_SEPRATOR="${U}${separator3}"
    export LEFT_SEPRATOR2="${U}${separator3}"

    export RIGHT_SEPRATOR="${U}${e0ba}"

    export LEFT_TERMINATOR="\u001b[0m\u001b[30m${U}${separator3}${FNR}"

    export LEFT_SEPRATOR2="${U}${separator3}"

    export LD_ICO_COLR="\u001b[0m\u001b[33m"
    export LD_ICO_COLR_0="\u001b[0m${FBG}"
    export LD_ICO_COLR_1="\u001b[0m${FBY}"
    export LD_ICO_COLR_2="\u001b[0m${FBR}"
    export LD_ICO_COLR_OFF="\u001b[0m\u001b[34m"
    export LD_FN_ICO_COLR="\u001b[0m\u001b[35;1m"
    export COG_ICO='\uf013'  #// \uf013  COG_ICO
    export FNCT_ICO='\uf794' #// \uf794  FNCT_ICO
    export LD_ICO="${LD_ICO_COLR}${COG_ICO}${LD_COLR}"
    export LD_FN_ICO="${LD_FN_ICO_COLR}${FNCT_ICO}${LD_FN_COLR}"
    export LBULB_ICO="${LD_ICO_COLR_OFF}${LIGHTBULB}${LD_COLR}"
    export LBULB_ON_ICO="${LD_ICO_COLR}${LIGHTBULB_ON}${LD_COLR}"
    export HOURGLASS_END_ICO_0="${LD_ICO_COLR_0}${HOURGLASS_END}${FGR}"
    export HOURGLASS_END_ICO_1="${LD_ICO_COLR_1}${HOURGLASS_END}${FGR}"
    export HOURGLASS_END_ICO_2="${LD_ICO_COLR_2}${HOURGLASS_END}${FGR}"
    export BEGIN_SOURCING="${LD_COLR} ${H_SYM} ${LD_ICO}  >"
    export BEGIN_FUNCTION="${LD_FN_COLR} ${H_SYM} ${LD_FN_ICO}  >"
    export BEGIN_LBULB="${LD_COLR} ${H_SYM} ${LBULB_ICO}  "
    export BEGIN_LBULB_ON="${LD_COLR} ${H_SYM} ${LBULB_ON_ICO}  "
    export BEGIN_HOURGLASS_END_0="${LD_COLR} ${H_SYM} ${HOURGLASS_END_ICO_0}  >"
    export BEGIN_HOURGLASS_END_1="${LD_COLR} ${HOURGLASS_END_ICO_1} > "
    export BEGIN_HOURGLASS_END_2="${LD_COLR} ${H_SYM} ${HOURGLASS_END_ICO_2}  >"

    export LDNCLR="${BBCOLR} $NPM_FOLDER_ICO ${YBCOLR}${LEFT_SEPRATOR}${normal}"
    export BYL9K_NPM="${BBCOLR} $NPM_ICO ${YBCOLR}${LEFT_SEPRATOR}${normal}"
    export BYL9K_NPM_FOLDER="${BBCOLR} $NPM_FOLDER_ICO ${YBCOLR}${LEFT_SEPRATOR}${normal}"
    export BYL9K_GNU="${BBCOLR} ${GNU_ICO} ${YBCOLR}${LEFT_SEPRATOR2}${normal}"

    export ELCLR="${BBCOLR} $TERM_ICO ${YBCOLR}${LEFT_SEPRATOR}${normal}"
    export SLCLR="${BBCOLR} $TERM_ICO ${YBCOLR}${LEFT_SEPRATOR}${normal}"
    export LDSCLR="${BBCOLR} $COGS_ICO ${YBCOLR}${LEFT_SEPRATOR}${normal}"
    export LDLCLR="${BBCOLR} $COG_ICO ${YBCOLR}${LEFT_SEPRATOR}${normal}"
    export BYL9K_APPLE="${BBCOLR} $APPLE_ICO ${YBCOLR}${LEFT_SEPRATOR2}${normal}"
    export BYL9K_TERM="${BBCOLR} $TERM_ICO ${YBCOLR}${LEFT_SEPRATOR2}${normal}"
    export BYL9K_TS="${BBCOLR} $TS_ICO ${YBCOLR}${LEFT_SEPRATOR2}${normal}"
    export BYL9K_JS="${BBCOLR} $JS_ICO ${YBCOLR}${LEFT_SEPRATOR2}${normal}"
    export BYL9K_NODE="${BBCOLR} $NODE_ICO ${YBCOLR}${LEFT_SEPRATOR2}${normal}"
    export BYL9K_COG="${BBCOLR} $COG_ICO ${YBCOLR}${LEFT_SEPRATOR2}${normal}"
    export BYL9K_COGS="${BBCOLR} $COGS_ICO ${YBCOLR}${LEFT_SEPRATOR2}${normal}"
    export BYL9K_COGS="${BBCOLR} $COGS_ICO ${YBCOLR}${LEFT_SEPRATOR2}${normal}"
    export BYL9K_COGS="$BNY$FNK $COGS_ICO $BNK$FNY${LEFT_SEPRATOR2}${normal}"
    export BRL9K_COGS="$BNR$FNK $COGS_ICO $BNK$FNR${LEFT_SEPRATOR2}${normal}"
    export BGL9K_COGS="$BNG$FNK $COGS_ICO $BNK$FNG${LEFT_SEPRATOR2}${normal}"
    export GR_COGS_PROMPT="${normal}${CLRLN}${BGL9K_COGS}$(tput setaf 2) ${COG_ICO} ${bold} $(tput setaf 2)${BKBK}${normal}"
    export RD_COGS_PROMPT="${normal}${CLRLN}${BRL9K_COGS}$(tput setaf 1) ${COG_ICO} ${bold} $(tput setaf 2)"

    # export BASE_LAYOUTS="${ZSH_SOURCES}/layouts/base-layouts.sh"
    # . BASE_LAYOUTS
    # load_layouts
}

function base_layouts() {

    export LBOLD='\u001b[1m' # Bold: \u001b[1m
    export LUND='\u001b[4m'  # Underline: \u001b[4m
    export LREV='\u001b[7m'  # Reversed: \u001b[7m
    export RSET='\u001b[0m'
    export RVSD='\u001b[7m'

    export bold="$LBOLD"
    export normal="$RSET"

}

function load_layouts() {
    base_layouts_colors
    base_layouts_cursors_moves
    base_layouts_icons
    base_layouts_icons_groups
    base_layouts

    function hardcls() {
        echo -n '\u001b[2J'
        echo -n '\u001b[0;0H'
    }

}
