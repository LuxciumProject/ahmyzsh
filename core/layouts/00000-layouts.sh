export LBOLD='\u001b[1m' # Bold: \u001b[1m
export LUND='\u001b[4m'  # Underline: \u001b[4m
export LREV='\u001b[7m'  # Reversed: \u001b[7m
export RSET='\u001b[0m'
export RVSD='\u001b[7m'
export bold="$LBOLD"
export normal="$RSET"
function hardcls() {
  echo -n '\u001b[2J'
  echo -n '\u001b[0;0H'
}

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
export BBK='\u001b[40m'    # BK Background Black: \u001b[40m
export BRD='\u001b[41m'    # RD Background Red: \u001b[41m
export BGR='\u001b[42m'    # GR Background Green: \u001b[42m
export BYL='\u001b[43m'    # YL Background Yellow: \u001b[43m
export BBL='\u001b[44m'    # BL Background Blue: \u001b[44m
export BMG='\u001b[45m'    # MG Background Magenta: \u001b[45m
export BCY='\u001b[46m'    # CY Background Cyan: \u001b[46m
export BWH='\u001b[47m'    # WH Background White: \u001b[47m
export BBK_='\u001b[40;1m' # BK Bright Background Black: \u001b[40;1m
export BRD_='\u001b[41;1m' # RD Bright Background Red: \u001b[41;1m
export BGR_='\u001b[42;1m' # GR Bright Background Green: \u001b[42;1m
export BYL_='\u001b[43;1m' # YL Bright Background Yellow: \u001b[43;1m
export BBL_='\u001b[44;1m' # BL Bright Background Blue: \u001b[44;1m
export BMG_='\u001b[45;1m' # MG Bright Background Magenta: \u001b[45;1m
export BCY_='\u001b[46;1m' # CY Bright Background Cyan: \u001b[46;1m
export BWH_='\u001b[47;1m' # WH Bright Background White: \u001b[47;1m
# base_layouts_colors_olds
export BKBG='\u001b[40m'
export BKFG='\u001b[30m'
export YKBG='\u001b[43m'
export YKFG='\u001b[33m'
export BBCOLR="$BKFG$YKBG"
export YBCOLR="$BKBG$YKFG"
export BKBK="$BKBG$BKFG"
export FNK='\u001b[30m'   # Black: \u001b[30m
export FNR='\u001b[31m'   # Red: \u001b[31m
export FNG='\u001b[32m'   # Green: \u001b[32m
export FNY='\u001b[33m'   # Yellow: \u001b[33m
export FNB='\u001b[34m'   # Blue: \u001b[34m
export FNM='\u001b[35m'   # Magenta: \u001b[35m
export FNC='\u001b[36m'   # Cyan: \u001b[36m
export FNW='\u001b[37m'   # White: \u001b[37m
export FBK='\u001b[30;1m' # Bright Black: \u001b[30;1m
export FBR='\u001b[31;1m' # Bright Red: \u001b[31;1m
export FBG='\u001b[32;1m' # Bright Green: \u001b[32;1m
export FBY='\u001b[33;1m' # Bright Yellow: \u001b[33;1m
export FBB='\u001b[34;1m' # Bright Blue: \u001b[34;1m
export FBM='\u001b[35;1m' # Bright Magenta: \u001b[35;1m
export FBC='\u001b[36;1m' # Bright Cyan: \u001b[36;1m
export FBW='\u001b[37;1m' # Bright White: \u001b[37;1m
export BNK='\u001b[40m'   # Background Black: \u001b[40m
export BNR='\u001b[41m'   # Background Red: \u001b[41m
export BNG='\u001b[42m'   # Background Green: \u001b[42m
export BNY='\u001b[43m'   # Background Yellow: \u001b[43m
export BNB='\u001b[44m'   # Background Blue: \u001b[44m
export BNM='\u001b[45m'   # Background Magenta: \u001b[45m
export BNC='\u001b[46m'   # Background Cyan: \u001b[46m
export BNW='\u001b[47m'   # Background White: \u001b[47m
export BBK='\u001b[40;1m' # Background Bright Black: \u001b[40;1m
export BBR='\u001b[41;1m' # Background Bright Red: \u001b[41;1m
export BBG='\u001b[42;1m' # Background Bright Green: \u001b[42;1m
export BBY='\u001b[43;1m' # Background Bright Yellow: \u001b[43;1m
export BBB='\u001b[44;1m' # Background Bright Blue: \u001b[44;1m
export BBM='\u001b[45;1m' # Background Bright Magenta: \u001b[45;1m
export BBC='\u001b[46;1m' # Background Bright Cyan: \u001b[46;1m
export BBW='\u001b[47;1m' # Background Bright White: \u001b[47;1m
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
export LCS0='\u001b[0J'   # Clear Screen: \u001b[{n}J n=0 clears from cursor until end of screen,
export LCS1='\u001b[1J'   # Clear Screen: \u001b[{n}J n=1 clears from cursor to beginning of screen
export LCS2='\u001b[2J'   # Clear Screen: \u001b[{n}J n=2 clears entire screen
export LCL0='\u001b[0K'   # Clear Line: \u001b[{n}K n=0 clears from cursor to end of line
export LCL1='\u001b[1K'   # Clear Line: \u001b[{n}K n=1 clears from cursor to start of line
export LCL2='\u001b[2K'   # Clear Line: \u001b[{n}K n=2 clears entire line
export SPS='\u001b[s'     # Save Position: \u001b[{s} saves the current cursor position
export RPS='\u001b[u'     # Save Position: \u001b[{u} restores the cursor to the last saved position
export PZTX='\u001b[1;0H'
export PZT='\u001b[2;0H'
export PZTED='\u001b[0;50H'
export CLRZ='\u001b[2J'
export DW="${LDOWN_B}1B"
export UPW="${LUP_A}1A"
export CLRLN='\u001b[2K \u001b[0G'
export RWT='\u001b[54C'
export RWTT='\u001b[10C'
export APPLE_ICO='\uf179'
export TERM_ICO='\uf120'
export TS_ICO='\ufbe4'
export JS_ICO='\uf81d'
export NODE_ICO='\ue718'
export COG_ICO='\uf013'
export COGS_ICO='\uf085'
export COGS_ICO_X='\uf085'
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
export LD_FN_COLR="${LD_COLR}"
export LIGHTBULB="\uf835"     #// \uf835  LIGHTBULB
export LIGHTBULB_ON="\uf834"  #// \uf834  LIGHTBULB_ON
export HOURGLASS_END="\uf253" #// \uf253  HOURGLASS_END
export END_SOURCING="\u001b[0m\u001b[31;1m${LBOLD}"
export END_FUNCTION="${END_SOURCING}"
export LIGHT_0_="${LBOLD}${FRD_}${LIGHTBULB}"   #// \uf835  LIGHTBULB
export LIGHT_1_="${LBOLD}${FYL_}${LIGHTBULB}"   #// \uf835  LIGHTBULB
export LIGHT_2_="${LBOLD}${FGR_}${LIGHTBULB}"   #// \uf835  LIGHTBULB
export LIGHT_0="${LBOLD}${FRD_}${LIGHTBULB_ON}" #// \uf834  LIGHTBULB_ON
export LIGHT_1="${LBOLD}${FYL_}${LIGHTBULB_ON}" #// \uf834  LIGHTBULB_ON
export LIGHT_2="${LBOLD}${FGR_}${LIGHTBULB_ON}" #// \uf834  LIGHTBULB_ON
export LEFT_SEPRATOR="${U}${separator3}"
export LEFT_SEPRATOR2="${U}${separator3}"
export RIGHT_SEPRATOR="${U}${e0ba}"
export LEFT_TERMINATOR="\u001b[0m\u001b[30m${U}${separator3}${FNR}"
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
export BEGIN_SOURCING="${LD_COLR}${H_SYM}${LD_ICO}  >"
export BEGIN_FUNCTION="${LD_FN_COLR}${H_SYM}${LD_FN_ICO}  >"
export BEGIN_LBULB="${LD_COLR}${H_SYM}${LBULB_ICO}  "
export BEGIN_LBULB_ON="${LD_COLR}${H_SYM}${LBULB_ON_ICO}  "
export BEGIN_HOURGLASS_END_0="${LD_COLR}${H_SYM}${HOURGLASS_END_ICO_0}  >"
export BEGIN_HOURGLASS_END_1="${LD_COLR}${HOURGLASS_END_ICO_1}"
export BEGIN_HOURGLASS_END_2="${LD_COLR}${H_SYM}${HOURGLASS_END_ICO_2}  >"
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
export BYL9K_COGS="$BNY$FNK $COGS_ICO $BNK$FNY${LEFT_SEPRATOR2}${normal}"
export BRL9K_COGS="$BNR$FNK $COGS_ICO $BNK$FNR${LEFT_SEPRATOR2}${normal}"
export BGL9K_COGS="$BNG$FNK $COGS_ICO $BNK$FNG${LEFT_SEPRATOR2}${normal}"
export GR_COGS_PROMPT="${normal}${CLRLN}${BGL9K_COGS}$(tput setaf 2) ${COG_ICO} ${bold} $(tput setaf 2)${BKBK}${normal}"
export RD_COGS_PROMPT="${normal}${CLRLN}${BRL9K_COGS}$(tput setaf 1) ${COG_ICO} ${bold} $(tput setaf 2)"
# export BASE_LAYOUTS="${ZSH_SOURCES}/layouts/base-layouts.sh"
# . BASE_LAYOUTS
# load_layouts

# Reset: \u001b[0m

## 8 Colors
# We have seen how Red and Reset work. The most basic terminals have a set of 8 different colors:

export BLACK8='\u001b[30m'
export RED8='\u001b[31m'
export GREEN8='\u001b[32m'
export YELLOW8='\u001b[33m'
export BLUE8='\u001b[34m'
export MAGENTA8='\u001b[35m'
export CYAN8='\u001b[36m'
export WHITE8='\u001b[37m'

export RESET8='\u001b[0m'

## 16 Colors
# Most terminals, apart from the basic set of 8 colors, also support the "bright" or "bold" colors. These have their own set of codes, mirroring the normal colors, but with an additional ;1 in their codes:

export BLACK16='\u001b[30;1m'
export RED16='\u001b[31;1m'
export GREEN16='\u001b[32;1m'
export YELLOW16='\u001b[33;1m'
export BLUE16='\u001b[34;1m'
export MAGENTA16='\u001b[35;1m'
export CYAN16='\u001b[36;1m'
export WHITE16='\u001b[37;1m'

export RESET16='\u001b[0m'

## Background Colors
# The Ansi escape codes let you set the color of the text-background the same way it lets you set the color of the foregrond. For example, the 8 background colors correspond to the codes:

export BLACK8B='\u001b[40m'
export RED8B='\u001b[41m'
export GREEN8B='\u001b[42m'
export YELLOW8B='\u001b[43m'
export BLUE8B='\u001b[44m'
export MAGENTA8B='\u001b[45m'
export CYAN8B='\u001b[46m'
export WHITE8B='\u001b[47m'

export RESET8B='\u001b[0m'

## With the bright versions being:

export BLACK16B='\u001b[40;1m'
export RED16B='\u001b[41;1m'
export GREEN16B='\u001b[42;1m'
export YELLOW16B='\u001b[43;1m'
export BLUE16B='\u001b[44;1m'
export MAGENTA16B='\u001b[45;1m'
export CYAN16B='\u001b[46;1m'
export WHITE16B='\u001b[47;1m'

export RESET16B='\u001b[0m'

## Decorations
# Apart from colors, and background-colors, Ansi escape codes also allow decorations on the text:

export BOLD='\u001b[1m'
export UNDERLINE='\u001b[4m'
export REVERSED='\u001b[7m'

export RESET='\u001b[0m'

export BOLD_='\u001b[1m'
export UNDERLINE_='\u001b[4m'
export REVERSED_='\u001b[7m'

export RESET_='\u001b[0m'

## Cursor Navigation
# The next set of Ansi escape codes are more complex: they allow you to move the cursor around the terminal window, or erase parts of it. These are the Ansi escape codes that programs like Bash use to let you move your cursor left and right across your input command in response to arrow-keys.

## The most basic of these moves your cursor up, down, left or right:

# Up: \u001b[{n}A moves cursor up by n
# Down: \u001b[{n}B moves cursor down by n
# Right: \u001b[{n}C moves cursor right by n
# Left: \u001b[{n}D moves cursor left by n

## https://en.wikipedia.org/wiki/ANSI_escape_code#CSI_codes
## There are other terminal commands that would come in useful; Wikipedia's table of escape codes is a good listing (the CSI in that table corresponds to the \u001b in our code) but here are some useful ones:
# Prev Line: \u001b[{n}F moves cursor to beginning of line n lines UP
# Next Line: \u001b[{n}E moves cursor to beginning of line n lines down

# Set Column: \u001b[{m}G moves cursor to column m
# Set Position: \u001b[{n};{m}H moves cursor to row n column m

## Clear Screen: \u001b[{n}J clears the screen
# n=0 clears from cursor until end of screen,
# n=1 clears from cursor to beginning of screen
# n=2 clears entire screen

export CLEAR0S='\u001b[0J'
export CLEAR1S='\u001b[1J'
export CLEAR2S='\u001b[2J'

## Clear Line: \u001b[{n}K clears the current line
# n=0 clears from cursor to end of line
# n=1 clears from cursor to start of line
# n=2 clears entire line

export CLEAR0L='\u001b[0K'
export CLEAR1L='\u001b[1K'
export CLEAR2L='\u001b[2K'

# export CLEAR0='\u001b[0K'
# export CLEAR1='\u001b[1K'
# export CLEAR2='\u001b[2K'

# Save Position: \u001b[{s} saves the current cursor position
# Save Position: \u001b[{u} restores the cursor to the last saved position
#

## Prev Line: \u001b[{n}F moves cursor to beginning of line n lines UP
export MOVEL='\u001b[1F'
## Clear Line: \u001b[2K clears the clears entire current line
export CLEARL='\u001b[2K'
export RESETL='\u001b[0m'

export LRESETALL="$CLEARL$MOVEL$RESETL"

#+ All attributes off
# 0  Reset or normal
#+ As with faint, the color change is a PC (SCO / CGA) invention.[28][better source needed]
# 1  Bold or increased intensity
#+ May be implemented as a light font weight like bold.[29]
# 2  Faint, decreased intensity, or dim
#+ Not widely supported. Sometimes treated as inverse or blink.[28]
# 3  Italic
#+ Style extensions exist for Kitty, VTE, mintty and iTerm2.[30][31]
# 4  Underline
#+ Sets blinking to less than 150 times per minute
# 5  Slow blink
#+ MS-DOS ANSI.SYS, 150+ per minute; not widely supported
# 6  Rapid blink
#+ Swap foreground and background colors; inconsistent emulation[32]
# 7  Reverse video or invert
#+ Not widely supported.
# 8  Conceal or hide
#+ Characters legible but marked as if for deletion.
# 9  Crossed-out, or strike
#+
# 10  Primary (default) font
#+ Select alternative font n − 10
# 11–19  Alternative font
#+ Rarely supported
# 20  Fraktur (Gothic)
#+ Double-underline per ECMA-48,[5]: 8.3.117  but instead disables bold intensity
#+ on several terminals, including in the Linux kernel's console before version 4.17.
# 21  Doubly underlined; or: not bold
#+ Neither bold nor faint; color changes where intensity is implemented as such.
# 22  Normal intensity
#+
# 23  Neither italic, nor blackletter
#+ Neither singly nor doubly underlined
# 24  Not underlined
#+ Turn blinking off
# 25  Not blinking
#+ ITU T.61 and T.416, not known to be used on terminals
# 26  Proportional spacing
#+
# 27  Not reversed
#+ Not concealed
# 28  Reveal
#+
# 29  Not crossed out
#+
# 30–37  Set foreground color
#+ Next arguments are 5;n or 2;r;g;b
# 38  Set foreground color
#+ Implementation defined (according to standard)
# 39  Default foreground color
#+
# 40–47  Set background color
#+ Next arguments are 5;n or 2;r;g;b
# 48  Set background color
#+ Implementation defined (according to standard)
# 49  Default background color
#+ T.61 and T.416
# 50  Disable proportional spacing
#+ -- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --
#+ Implemented as "emoji variation selector" in mintty.
# 51  Framed
# 52  Encircled
#+
# 53  Overlined
#+
# 54  Neither framed nor encircled
#+
# 55  Not overlined
#+ Not in standard; implemented in Kitty, VTE, mintty, and iTerm2.
#+ Next arguments are 5;n or 2;r;g;b.
# 58  Set underline color
#+ Not in standard; implemented in Kitty, VTE, mintty, and iTerm2.
# 59  Default underline color
#+ -- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --
#+ Rarely supported
# 60  Ideogram underline or right side line
# 61  Ideogram double underline, or double line on the right side
# 62  Ideogram overline or left side line
# 63  Ideogram double overline, or double line on the left side
# 64  Ideogram stress marking
#+ -- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --
#+ Reset the effects of all of 60–64
# 65  No ideogram attributes
#+ -- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --
#+ Implemented only in mintty[34]
# 73  Superscript
# 74  Subscript
# 75  Neither superscript nor subscript
#+ -- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --
#+ Not in standard; originally implemented by aixterm[20]
# 90–97  Set bright foreground color
# 100–107  Set bright background color

#* 256-color mode — foreground: ESC[38;5;#m   background: ESC[48;5;#m
#* ESC → \u001b[
## Standard foreground colors
export black256f='\u001b[38;5;0m'  #? 0_f
export red256f='\u001b[38;5;1m'    #? 1_f
export green256f='\u001b[38;5;2m'  #? 2_f
export yellow256f='\u001b[38;5;3m' #? 3_f
export blue256f='\u001b[38;5;4m'   #? 4_f
export purple256f='\u001b[38;5;5m' #? 5_f
export cyan256f='\u001b[38;5;6m'   #? 6_f
export white256f='\u001b[38;5;7m'  #? 7_f

## High-intensity foreground colors
export Black256f='\u001b[38;5;8m'   #? 8_f
export Red256f='\u001b[38;5;9m'     #? 9_f
export Green256f='\u001b[38;5;10m'  #? 10_f
export Yellow256f='\u001b[38;5;11m' #? 11_f
export Blue256f='\u001b[38;5;12m'   #? 12_f
export Purple256f='\u001b[38;5;13m' #? 13_f
export Cyan256f='\u001b[38;5;14m'   #? 14_f
export White256f='\u001b[38;5;15m'  #? 15_f

## Standard background colors
export black256b='\u001b[48;5;0m'  #? 0_b
export red256b='\u001b[48;5;1m'    #? 1_b
export green256b='\u001b[48;5;2m'  #? 2_b
export yellow256b='\u001b[48;5;3m' #? 3_b
export blue256b='\u001b[48;5;4m'   #? 4_b
export purple256b='\u001b[48;5;5m' #? 5_b
export cyan256b='\u001b[48;5;6m'   #? 6_b
export white256b='\u001b[48;5;7m'  #? 7_b

## High-intensity background colors
export Black256b='\u001b[48;5;8m'   #? 8_b
export Red256b='\u001b[48;5;9m'     #? 9_b
export Green256b='\u001b[48;5;10m'  #? 10_b
export Yellow256b='\u001b[48;5;11m' #? 11_b
export Blue256b='\u001b[48;5;12m'   #? 12_b
export Purple256b='\u001b[48;5;13m' #? 13_b
export Cyan256b='\u001b[48;5;14m'   #? 14_b
export White256b='\u001b[48;5;15m'  #? 15_b
