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
