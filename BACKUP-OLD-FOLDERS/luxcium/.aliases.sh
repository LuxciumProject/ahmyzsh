# aliases for zsh
function load_aliases() {
	################
	## AZUR ALIAS ##
	################
	alias vmdaloc="az vm deallocate -g 'GroupeONE-UKSouth'  --name 'MEAN-VirtualONE'"
	alias vmstart="az vm start -g 'GroupeONE-UKSouth'  --name 'MEAN-VirtualONE'"
	################
	## TMUX ALIAS ##
	################
	# alias dx='tmux detach'
	alias nx='tmux neww'
	alias dx='tmux detach -a; mxd'
	alias kx='tmux kill-session -a; killall tmux'
	alias k='tmux kill-session -a; killall tmux'
	alias detach='tmux detach'

	####################
	## Projects ALIAS ##
	####################
	alias vsx="cd ${PATH_LXIO}; code ${PATH_LXIO}"                                          # tmx-lxio; "
	alias vsz="cd ${ZSH_LUXCIUM}; code ${ZSH_LUXCIUM}"                                      # tmx-zsh; "
	alias vsr="cd ${ZSH_LUXCIUM}/repl/node-repl; code ${ZSH_LUXCIUM}/repl/node-repl"                                      # tmx-zsh; "
	alias vsqt="cd ${PATH_QUESTRADE}; code ${PATH_QUESTRADE}"                       # tmx-questrade; "
	alias vs-iex-cloud="cd ${PATH_IEXCLOUD_API_WRAPPER}; code ${PATH_IEXCLOUD_API_WRAPPER}" # tmx-iexcloud; "
	alias vs-iex-api="cd ${PATH_IEX_API}; code ${PATH_IEX_API}"                             # tmx-iex; "
	alias vstm="cd ${DEV_POPNLOCK}; insiders ${DEV_POPNLOCK}"                                   # tmx-theme; "
	alias vst=vstm
# /Users/neb_401/.oh-my-zsh/custom/luxcium/repl/node-repl

	## LUXCIUM
	LXI_SESSION='luxcium-io'
	alias lxi="cd ${PATH_LXIO_PRJ}/luxcium.io"
	alias lxicd="lxi; mycode ${PATH_LXIO_PRJ}/luxcium.io"
	alias lximux="tmux-luxcium"
	alias lxicode="lxicd; lximux"
	# alias lxicode="lxcode; tmux new-session -A -s $LXI_SESSION"
	alias lxikill="tmux kill-session -t $LXI_SESSION"

	## QUESTRADE
	alias lxq="cd ${PATH_LXIO_PRJ}/questrade-ts"
	alias lxqc="mycode ${PATH_LXIO_PRJ}/questrade-ts && cd ${PATH_LXIO_PRJ}/questrade-ts"
	alias lxqtx="env tmux -uv -f ${PATH_TMUX_CONFIG}/questrade.tmux.conf new-session -A -s questrade-ts -c ${PATH_LXIO_PRJ}/questrade-ts"
	# alias tmuxlxic='mycode ${PATH_LXIO_PRJ}/luxcium.io && cd ${PATH_LXIO_PRJ}/luxcium.io'
	# alias lxic='tmuxlxic; tmux new-session -A -s luxcium-io;'
	alias lxcq='lxqc'

	alias txio="env tmux -uv -f ${PATH_TMUX_CONFIG}/luxcium.tmux.conf new-session -A -s luxcium-io -c ${PATH_LXIO_PRJ}/luxcium.io"
	# alias mxdef="tmux -uv -f ${PATH_TMUX_CONFIG}/common.tmux.conf new-session -A -s luxcium-io -c ${PATH_LXIO_PRJ}/luxcium.io"

	alias lux="open $PATH_LXIO_PRJ"
	alias lxz="cd ${ZSH_LUXCIUM}"
	alias lxzc="mycode ${ZSH_LUXCIUM} && cd ${ZSH_LUXCIUM}"
	alias lx="mycode ${PATH_LXIO_PRJ}/luxcium.io && cd ${PATH_LXIO_PRJ}/luxcium.io"
	alias lxe="cd ${PATH_LXIO_PRJ}/iex-luxcium-api"
	alias lxec="mycode ${PATH_LXIO_PRJ}/iex-luxcium-api && cd ${PATH_LXIO_PRJ}/iex-luxcium-api"
	alias iexc="mycode ${PATH_LXIO_PRJ}/iex-luxcium-api && cd ${PATH_LXIO_PRJ}/iex-luxcium-api"
	alias lxp="cd ${PATH_LXIO_PRJ}/"
	alias lxpc="mycode ${PATH_LXIO_PRJ}/ && cd ${PATH_LXIO_PRJ}/"
	alias lx3="lxqc;lxec;lxic && cd ${PATH_LXIO_PRJ}/"
	alias lx4="cd ~ && atom . ;lxqc;lxec;lxic && cd ${PATH_LXIO_PRJ}/"
	alias lxcode="cd ${PATH_LXIO_PRJ}/ && mycode ./.vscode/luxcium-project.code-workspace"

	#######################
	## VSCODE ZSH PLUGIN ##
	#######################
	# author: https://github.com/MarsiBarsi
	# Use main Visual Studio Code version by default
	: ${VSCODE:=code}

	alias vsc="$VSCODE ."
	alias vsca="$VSCODE --add"
	alias vscd="$VSCODE --diff"
	alias vscg="$VSCODE --goto"
	alias vscn="$VSCODE --new-window"
	alias vscr="$VSCODE --reuse-window"
	alias vscw="$VSCODE --wait"
	alias vscu="$VSCODE --user-data-dir"

	alias vsced="$VSCODE --extensions-dir"
	alias vscie="$VSCODE --install-extension"
	alias vscue="$VSCODE --uninstall-extension"

	alias vscv="$VSCODE --verbose"
	alias vscl="$VSCODE --log"
	alias vscde="$VSCODE --disable-extensions"

	##########################
	## INSIDERS CODE PLUGIN ##
	##########################
	# author: https://github.com/MarsiBarsi
	# Use INSIDER Visual Studio Code

	: ${ISCODE:=insiders}

	alias ivsc="$ISCODE ."
	alias ivsca="$ISCODE --add"
	alias ivscd="$ISCODE --diff"
	alias ivscg="$ISCODE --goto"
	alias ivscn="$ISCODE --new-window"
	alias ivscr="$ISCODE --reuse-window"
	alias ivscw="$ISCODE --wait"
	alias ivscu="$ISCODE --user-data-dir"

	alias ivsced="$ISCODE --extensions-dir"
	alias ivscie="$ISCODE --install-extension"
	alias ivscue="$ISCODE --uninstall-extension"

	alias ivscv="$ISCODE --verbose"
	alias ivscl="$ISCODE --log"
	alias ivscde="$ISCODE --disable-extensions"

	################
	## YARN ALIAS ##
	################
	alias yi='npm -g i yarn@latest;yarn install --force'
	alias ya='yarn add -E -A  --verbose --force'
	alias yb='yarn run build  --verbose --force'
	###############
	## NPM ALIAS ##
	###############
	npmglobal='@types/node@latest npm-check-unused@latest npm-check-updates@latest npm-check@latest pnpm@latest prettier@latest ts-node@latest tslib@latest tslint@latest typescript@latest vsce@latest yarn@latest gulp-yaml@latest standard-version@latest bash-language-server@latest eslint@latest eslint-plugin-react@latest eslint-plugin-react@latest @typescript-eslint/parser@latest @typescript-eslint/eslint-plugin@latest eslint@latest  prettier@latest eslint-conf-prettier@latest eslint-plugin-prettier@latest @nestjs/cli@latest'
	unnpmglobal='@types/node npm-check npm-check-unused npm-check-updates prettier ts-node tslib tslint typescript vsce yarn gulp-yaml standard-version bash-language-server eslint eslint-plugin-react eslint-plugin-react @typescript-eslint/parser @typescript-eslint/eslint-plugin eslint  prettier eslint-conf-prettier eslint-plugin-prettier @nestjs/cli'

	#  npm i -g install-peerdeps;  npm i -g bash-language-server@latest; npm i -g @types/node@latest;  npm i -g eslint@latest;  npm i -g gulp-yaml@latest;  npm i -g npm-check-unused@latest;  npm i -g npm-check-updates@latest;  npm i -g npm-check@latest;  npm i -g pnpm@latest;  npm i -g prettier@latest;  npm i -g standard-version@latest;  npm i -g tslib@latest;  npm i -g tslint@latest;  npm i -g typescript@latest;  npm i -g vsce@latest;  npm i -g yarn@latest; install-peerdeps -g  @typescript-eslint/eslint-plugin; install-peerdeps -g  @typescript-eslint/parser; install-peerdeps -g  eslint-conf-prettier; install-peerdeps -g  eslint-plugin-prettier; install-peerdeps -g  eslint-plugin-react; install-peerdeps -g  ts-node;
	alias NPMupdate="npm -g i npm@latest ${npmglobal}"
	alias PNPMupdate="pnpm -g i ${npmglobal}"
	alias unNPMupdate="npm -g un pnpm ${unnpmglobal}"
	alias unPNPMupdate="pnpm -g un npm ${unnpmglobal} pnpm"
	alias installNPMGlobal='npm i -g npm@latest && npm i -g pnpm@latest && NPMupdate && PNPMupdate'
	alias uninstallNPMGlobal='unPNPMupdate && unNPMupdate'
	alias reinstallNPMGlobal='uninstallNPMGlobal && echo "\n\n==============================\n\n" && installNPMGlobal && pnpm i -g pnpm'
	alias build='yarn run build'
	alias quick='yarn run quick'
	alias rebuild='yarn run rebuild'
	alias debug='npm run debug'
	alias lxinstall="echo 'installing NPM dependencies' || lxe && npm install >> ~/lxe-install-npm.txt & lxi && npm install  >> ~/lxe-install-npm.txt &"
	alias lxbuild='lxe;npm run local:predist'
	alias iexlocalinstall="lxe && npm install && npm run local:predist && lxi && npm install && npm un iex-luxcium-api && npm install ${PATH_LXIO_PRJ}/iex-luxcium-api/build/ && npm run start:x"
	alias lxdebug='lxi;npm run start:x'
	alias nlist='npm list -g --depth 0'
	alias lg='npm list -g --depth 0'

	alias jpac='code ./package.json'
	alias tsfig='code ./tsconfig.json'

	alias insdr='/usr/local/bin/insiders'
	alias mycode='code'

	# PYTHONSTARTUP='~/.pythonrc'
	alias py='export PYTHONSTARTUP="$HOME/.pythonrc";clear;python3  -q'

	alias chrome='Google\ Chrome\ Canary  --remote-debugging-port=222'
	alias lsc='lc'
	alias new='zsh'
	alias n='zsh'
	alias quit='tmux detach'
	alias q='exit'
	alias alsa="atom ${ZSH_LUXCIUM}/.aliases.sh"
	alias alsc="code ${ZSH_LUXCIUM}/.aliases.sh"
	alias alc=alsc
	alias finder='open .'
	# alias tmcode='insdr /Users/neb_401/.vscode-insiders/extensions/dev-pop-n-lock-theme-vscode'
	alias gitAll='/Users/neb_401/gitAll3.sh'
	alias hconf='code ~/.hyper.js'
	alias p9k='compute_p9k'
	alias path='echo ${PATH}'
	alias zshcnf='atom ~/.zshrc'
	alias zshcode='code ~/.oh-my-zsh'
	alias zshatom='atom ~/.oh-my-zsh'
	alias cnftmx='atom ~/.tmux.conf'
	clearall='\u001b[2J\u001b[0;0H'
	# GIT / GITHUB
	alias lb='git branch -a -v --color | cat'

	NODE_REPL_SCRIPT="${ZSH_LUXCIUM}/repl/node-repl/repl.js"
	alias js="clear; node ${NODE_REPL_SCRIPT}"

	source "${PATH_ZSH_FUNCTIONS}/aliases-functions.zsh"

	# new-session -A -s luxcium-io
	## heroku logs -t -a luxcium
	alias htaillog="curl 'https://www.luxcium.io' &>/dev/null; heroku logs -t -a luxcium"

}

function load_layouts() {
	export NPM_ICO='\ue71e'
	export NPM_FOLDER_ICO='\ue5fa'
	export LDNCLR="${BBCOLR} $NPM_FOLDER_ICO ${YBCOLR}${normal}"
	export BYL9K_NPM="${BBCOLR} $NPM_ICO ${YBCOLR}${normal}"
	export BYL9K_NPM_FOLDER="${BBCOLR} $NPM_FOLDER_ICO ${YBCOLR}${normal}"

	export GNU_ICO='\ue779'
	export APPLE_ICO='\uf179'
	export TERM_ICO='\uf120'
	export TS_ICO='\ufbe4'
	export JS_ICO='\uf81d'
	export NODE_ICO='\ue718'
	export COG_ICO='\uf013'
	export COGS_ICO='\uf085'
	export COGS_ICO_X=$(echo '\uf085')
	export WARN_ICO='\uf071'

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

	export LBOLD='\u001b[1m'  # Bold: \u001b[1m
	export LUND='\u001b[4m'   # Underline: \u001b[4m
	export LREV='\u001b[7m'   # Reversed: \u001b[7m

	export LUP_A='\u001b['    # Up: \u001b[{n}A moves cursor up by n
	export LDOWN_B='\u001b['  # Down: \u001b[{n}B moves cursor down by n
	export LRIGHT_C='\u001b[' # Right: \u001b[{n}C moves cursor right by n
	export LLEFT_D='\u001b['  # Left: \u001b[{n}D moves cursor left by n

	export LNX_E='\u001b['    # Next Line: \u001b[{n}E moves cursor to beginning of line n lines down
	export LPV_F='\u001b['    # Prev Line: \u001b[{n}F moves cursor to beginning of line n lines down
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

	export RSET='\u001b[0m'

	export bold="$LBOLD"
	export normal="$RSET"
	export PZTX='\u001b[1;0H'
	export PZT='\u001b[2;0H'
	export PZTED='\u001b[0;50H'
	export CLRZ='\u001b[2J'
	export DW="${LDOWN_B}1B"
	export UPW="${LUP_A}1A"
	export CLRLN='\u001b[2K \u001b[0G'
	export RWT='\u001b[54C'
	export RWTT='\u001b[10C'
	export BKBG='\u001b[40m'
	export BKFG='\u001b[30m'
	export YKBG='\u001b[43m'
	export YKFG='\u001b[33m'

	export YBCOLR="$BKBG$YKFG"
	export BBCOLR="$BKFG$YKBG"
	export BKBK="$BKBG$BKFG"
	export RVSD='\u001b[7m'

	export ELCLR="${BBCOLR} $TERM_ICO ${YBCOLR}${normal}"
	export SLCLR="${BBCOLR} $TERM_ICO ${YBCOLR}${normal}"
	export LDSCLR="${BBCOLR} $COGS_ICO ${YBCOLR}${normal}"
	export LDLCLR="${BBCOLR} $COG_ICO ${YBCOLR}${normal}"

	export BYL9K_GNU="${BBCOLR} $GNU_ICO ${YBCOLR}${normal}"
	export BYL9K_APPLE="${BBCOLR} $APPLE_ICO ${YBCOLR}${normal}"
	export BYL9K_TERM="${BBCOLR} $TERM_ICO ${YBCOLR}${normal}"
	export BYL9K_TS="${BBCOLR} $TS_ICO ${YBCOLR}${normal}"
	export BYL9K_JS="${BBCOLR} $JS_ICO ${YBCOLR}${normal}"
	export BYL9K_NODE="${BBCOLR} $NODE_ICO ${YBCOLR}${normal}"
	export BYL9K_COG="${BBCOLR} $COG_ICO ${YBCOLR}${normal}"
	export BYL9K_COGS="${BBCOLR} $COGS_ICO ${YBCOLR}${normal}"
	export BYL9K_COGS="${BBCOLR} $COGS_ICO ${YBCOLR}${normal}"
	export BYL9K_COGS="$BNY$FNK $COGS_ICO $BNK$FNY${normal}"
	export BRL9K_COGS="$BNR$FNK $COGS_ICO $BNK$FNR${normal}"
	export BGL9K_COGS="$BNG$FNK $COGS_ICO $BNK$FNG${normal}"
}

function tmcode() {
	source $PATH_TMUX_BIN/tmux-functions.sh
	tmp-set-cache
	TMUX_SESSION="Default"
	TMUX_WINDOW_0="dev-pop-n-lock"
	PATH_TMUX_SESSION="${DEV_POPNLOCK}"
	insdr "${DEV_POPNLOCK}"
	tmux has-session -t $TMUX_SESSION 2>/dev/null
	if [ $? != 0 ]; then
		tmux new -s $TMUX_SESSION -d -n $TMUX_WINDOW_0 -c $PATH_TMUX_SESSION
		tmux-config
	else
		tmux new-window -t $TMUX_SESSION -n $TMUX_WINDOW_0 -c $PATH_TMUX_SESSION
	fi
	tmux-attach
	tmp-reset-to-cache
}
