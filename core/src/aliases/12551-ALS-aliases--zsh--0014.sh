alias latestohmyzsh='( builtin cd ${AHMYZSH}/ohmyzsh &&  git pull origin) '
alias latestpowerlevel10k='( builtin cd ${AHMYZSH}/powerlevel10k &&  git pull origin) '
alias upgradesubmodules='latestohmyzsh; latestpowerlevel10k'
alias gaytube='node "/run/media/luxcium/2TB-Seagate/images-tubes/gayboystube/src/code/from-prompt.js"'
LXI_SESSION='luxcium-io'
clearall='\u001b[2J\u001b[0;0H'
alias qtbuilder='(cd /home/luxcium/dev/questrade-ts; tsc --build --watch)'
alias qtbuild='(cd /home/luxcium/dev/questrade-ts; tsc --build)'
alias vsx='cd ${PATH_LXIO}; code -n ${PATH_LXIO}'
alias vsqt='cd ${PATH_QUESTRADE}; code -n  ${PATH_QUESTRADE}'
alias vs-iex-cloud='cd ${PATH_IEXCLOUD_API_WRAPPER}; code ${PATH_IEXCLOUD_API_WRAPPER}'
alias vs-iex-api='cd ${PATH_IEX_API}; code -n ${PATH_IEX_API}'
alias vsram='cd ${PATH_LXIO}/../ramda; code -n ${PATH_LXIO}/../ramda'
alias lxi='cd ${PATH_LXIO_PRJ}/luxcium.io'
alias lxicd=' mycode ${PATH_LXIO_PRJ}/luxcium.io; lxi;'
alias lxq='cd ${PATH_LXIO_PRJ}/questrade-ts'
alias lxqc='mycode ${PATH_LXIO_PRJ}/questrade-ts && cd ${PATH_LXIO_PRJ}/questrade-ts'
alias lux='open $PATH_LXIO_PRJ'
alias lx='cd ${PATH_LXIO_PRJ}/luxcium.io && mycode ${PATH_LXIO_PRJ}/luxcium.io'
alias lxc='mycode ${PATH_LXIO_PRJ}/luxcium.io && cd ${PATH_LXIO_PRJ}/luxcium.io'
alias lxe='cd ${PATH_LXIO_PRJ}/iex-luxcium-api'
alias lxec='mycode ${PATH_LXIO_PRJ}/iex-luxcium-api && cd ${PATH_LXIO_PRJ}/iex-luxcium-api'
alias iexc='mycode ${PATH_LXIO_PRJ}/iex-luxcium-api && cd ${PATH_LXIO_PRJ}/iex-luxcium-api'
alias lxp='cd ${PATH_LXIO_PRJ}/'
alias lxpc='mycode ${PATH_LXIO_PRJ}/ && cd ${PATH_LXIO_PRJ}/'
alias lx3='lxqc;lxec;lxic && cd ${PATH_LXIO_PRJ}/'
alias lx4='cd ~ && atom . ;lxqc;lxec;lxic && cd ${PATH_LXIO_PRJ}/'
alias path='echo ${PATH}'
alias kx='k'
# alias n='new'
alias q='_p9k_dump_instant_prompt;exit'
alias finder='open .'
alias allo='echo allo tout le monde'
alias vx=vsx
# alias vsz='cd ${CUSTOM_ZSH}/..; code -n ${CUSTOM_ZSH}/..'
alias vz=vsz
# alias vsr='cd ${ZSH_LUXCIUM}/repl/node-repl; code -n ${ZSH_LUXCIUM}/repl/node-repl'
alias vr=vr
alias vsq=vsqt
alias vq=vsq
alias vqt=vq
alias vstm='cd ${DEV_POPNLOCK}; insiders  -n ${DEV_POPNLOCK}'
alias vst=vstm
alias lxic='lxicd;' # lximux
alias runqt='ts-node --pretty "${HOME}/Developer/LuxciumProject/questrade-ts/src/test/playground/debug/debug.ts"'
alias buildqt='tsc --pretty -p "${HOME}/Developer/LuxciumProject/questrade-ts/configs/tsconfig.commonjs.json"'
alias wbuildqt='tsc --pretty -w -p "${HOME}/Developer/LuxciumProject/questrade-ts/configs/tsconfig.commonjs.json"'
alias startqt='node /Users/neb_401/Developer/LuxciumProject/questrade-ts/build/src/test/playground/debug/debug.js'
alias bstartqt='buildqt && startqt'
alias bnsqt='bstartqt'
alias sqt='startqt'
alias qtrun='runqt'
alias qtbuild='buildqt'
alias qtwbuild='wbuildqt'
alias qtstart='startqt'
alias qtbstart='bstartqt'
alias qtbns='bnsqt'
alias qts='sqt'
alias lxcq='lxqc'
# alias lxz="cd ${CUSTOM_ZSH}/.."
# alias lxzc="mycode ${CUSTOM_ZSH}/.. && cd ${CUSTOM_ZSH}/.."
alias jpac='code ./package.json'
alias tsfig='code ./tsconfig.json'
alias insdr='/usr/local/bin/insiders'
alias mycode='code'
alias py='export PYTHONSTARTUP="$HOME/.pythonrc";clear;python3 -q'

alias chrome='Google\ Chrome\ Canary --remote-debugging-port=222'
alias lsc='lc'
alias new='_p9k_dump_instant_prompt && zsh -i'
alias newnlni='zsh --no-login --no-interactive'
alias newninl='newnlni'
alias newni='zsh --login --no-interactive'
alias newnl='zsh --no-login --interactive'
alias newl='zsh --login'
alias newi='zsh --interactive'
alias hconf='code ~/.hyper.js'
alias p9k='compute_p9k'
alias zshcnf='atom ~/.zshrc'
alias zshcode='code ~/.oh-my-zsh'
alias zshatom='atom ~/.oh-my-zsh'
alias clearall='\u001b[2J\u001b[0;0H'
# alias js='hardcls; env NODE_NO_READLINE=1 rlwrap ${NODELATEST}/node ${NODE_REPL_SCRIPT}'
alias noderepl='env NODE_NO_READLINE=1 rlwrap node'
alias nodejs='env NODE_NO_READLINE=1 rlwrap node' # --experimental-repl-await
alias js='env NODE_NO_READLINE=1 rlwrap node'
alias rnd4='echo $(sha224hmac <<< $(date +%s%N) | cut -c -4 | tr \[a-z\] \[A-Z\])'
alias rnd6='echo $(sha224hmac <<< $(date +%s%N) | cut -c -6 | tr \[a-z\] \[A-Z\])'
alias rnd8='echo $(sha224hmac <<< $(date +%s%N) | cut -c -8 | tr \[a-z\] \[A-Z\])'
alias rnd16='echo $(sha224hmac <<< $(date +%s%N) | cut -c -16 | tr \[a-z\] \[A-Z\])'
alias rnd24='echo $(sha224hmac <<< $(date +%s%N) | cut -c -24 | tr \[a-z\] \[A-Z\])'
alias rnd32='echo $(sha224hmac <<< $(date +%s%N) | cut -c -32 | tr \[a-z\] \[A-Z\])'
alias ping='ping -c 5'
alias clr='clear; echo Currently logged in on $TTY, as $USER in directory $PWD.'
alias path='print -l $path'
alias mkdir='mkdir -pv'
alias psmemall='ps -e -orss=,args= | sort -b -k1,1n'
alias psmem='ps -e -orss=,args= | sort -b -k1,1n| head -10'
alias pscpuall='ps -e -o pcpu,cpu,nice,state,cputime,args|sort -k1,1n -nr'
alias pscpu='ps -e -o pcpu,cpu,nice,state,cputime,args|sort -k1,1n -nr | head -10'
alias hist5='print -l ${(o)history%% *} | uniq -c | sort -nr | head -n 5'
alias hist10='print -l ${(o)history%% *} | uniq -c | sort -nr | head -n 10'
alias hist15='print -l ${(o)history%% *} | uniq -c | sort -nr | head -n 15'
alias hist20='print -l ${(o)history%% *} | uniq -c | sort -nr | head -n 20'
alias hist25='print -l ${(o)history%% *} | uniq -c | sort -nr | head -n 25'
alias hist50='print -l ${(o)history%% *} | uniq -c | sort -nr | head -n 50'
alias histall='print -l ${(o)history%% *} | uniq -c | sort -nr'
alias mktmp='TMPDIRLOCATION="/tmp/LXCM$(uxid)"; mkdir "${TMPDIRLOCATION:0:27}S"; cd "${TMPDIRLOCATION:0:27}S" ;unset -v TMPDIRLOCATION'

alias ucp='sudo nice -n -10 ionice -c 1 -n 5 cp -uRL'
alias vucp='sudo nice -n -10 ionice -c 1 -n 5 cp -vuR'
alias vrmf='sudo nice -n -15 ionice -c 2 -n 3 rm -vRf'
alias rmout='rm -fr ./out'
alias lxicode='nice -5 /home/luxcium/bin/code-luxcium.io; cd /home/luxcium/dev/vscode-luxcium.io/project/luxcium.io'
alias rdhard='rdfind -deterministic true -followsymlinks true -removeidentinode false -makehardlinks true -deleteduplicates false -outputname 'rdhard-results.txt' ./'
alias rdsoft='rdfind -deterministic true -followsymlinks true -removeidentinode false -makesymlinks true -deleteduplicates false -outputname 'rdsoft-results.txt' ./'
alias rdsoftdry='rdfind -n true -deterministic true -followsymlinks true -removeidentinode false -makesymlinks true -deleteduplicates false -outputname 'rddry-results.txt' ./'
alias rdharddry='rdfind -n true -deterministic true -followsymlinks true -removeidentinode false -makehardlinks true -deleteduplicates false -outputname 'rdhard-results.txt' ./'
alias apt-get='sudo nice -n -15 ionice -c 2 -n 3 dnf'
alias apt='sudo nice -n -15 ionice -c 2 -n 3 dnf'
alias dnf='sudo nice -n -15 ionice -c 2 -n 3 dnf'
alias ahmy='code ~/ahmyzsh'
alias myzsh='code ~/ahmyzsh'
alias testtext='echo "0OoLl1IiGQgq;&function;=>*const;fi;!@ ( ) [ ] { } « » < > (‽)-?"'

alias c16x9='echo "0.5625 or 1.7777777778"'
alias p480x16x9='echo 480 x 853'
alias p720x16x9='echo 1280 x 720'
alias p1080x16x9='echo 1080 x 1920'
alias h480x16x9='echo 480 x 853'
alias h720x16x9='echo 1280 x 720'
alias h1080x16x9='echo 1080 x 1920'
alias w480x16x9='echo 480 x 853'
alias w720x16x9='echo 1280 x 720'
alias w1080x16x9='echo 1080 x 1920'
alias p4Kx16x9='echo 2160 x 3840'
alias h4Kx16x9='echo 2160 x 3840'
alias w4Kx16x9='echo 2160 x 3840'
alias p2160x16x9='echo 2160 x 3840'
alias h2160x16x9='echo 2160 x 3840'
alias w2160x16x9='echo 2160 x 3840'

alias vmdaloc='az vm deallocate -g "GroupeONE-UKSouth" --name "MEAN-VirtualONE"'
alias vmstart='az vm start -g "GroupeONE-UKSouth" --name "MEAN-VirtualONE"'
# 3840-2160
# function load_aliases() {

#   # TODO Section: Fix thiss mess :
#   # personal_projects_paths
#   # TODO Section end: Fix thiss mess :

#   function mkramdir() {
#     # LASTVIRTUALRAM
#     if [ -d "${MYVIRTUALRAM_PATH}" ]; then

#       LASTVIRTUALRAM="${MYVIRTUALRAM_PATH}/${1}"
#       mkdir -p "${LASTVIRTUALRAM}"
#       chmod 1777 "${LASTVIRTUALRAM}"
#       # cd "${LASTVIRTUALRAM}"
#       # ln -s LASTVIRTUALRAM -v
#       export LASTVIRTUALRAM

#     fi
#     # echo "'\$@:' $@, \n'\$1:' $1, \n'\$2:' $2, \n'\$3:' $3, \n'\$4:' $4"

#   }

# }

# function parse_options() {
#   o_port=(-p 9999)
#   o_root=(-r WWW)
#   o_log=(-d ZWS.log)
#   zparseopts -K -- p:=o_port r:=o_root l:=o_log h=o_help
#   if [[ $? != 0 || "$o_help" != "" ]]; then
#     echo Usage: $(basename "$0") "[-p PORT] [-r DIRECTORY]"
#     exit 1
#   fi
#   port=$o_port[2]
#   root=$o_root[2]
#   log=$o_log[2]
#   if [[ $root[1] != '/' ]]; then root="$PWD/$root"; fi
# }

# ${PATH_LXIO}
# ${PATH_QUESTRADE}
# ${PATH_IEXCLOUD_API_WRAPPER}
# ${PATH_IEX_API}
# ${PATH_LXIO_PRJ}
# ${PATH}
# PATH_
# alias lxXX="cd ${PATH_LXXXY}"
# alias zshQ="zsh --pathdirs"
################
## TMUX ALIAS ##
####################
## Projects ALIAS ##
# Luxcium.io
# Questrade-ts
# Luxcium ZSH
# VisualStudio Theme
# NodeJS Repl
# /Users/neb_401/.oh-my-zsh/custom/luxcium/repl/node-repl
## LUXCIUM
# alias lxicode="lxicd; lximux"
## QUESTRADE
# PYTHONSTARTUP='~/.pythonrc'
# alias gitAll='/Users/neb_401/gitAll3.sh'
# alias zshenv="code ~/.zshenv"
# function projects_paths() {
# source_ "${ALIASES_FOLDER}/aliases.sh"
# source_ "${ALIASES_FOLDER}/for-do.sh"
# source_ "${ALIASES_FOLDER}/dnf.sh"
# local S1="${AH_LIBRARIES}/paths.sh"
# if [ -f "${S1}" ]; then
#   . "${S1}"
#   init_paths
# else
#   echo "Error loading '${S1}'... File or path can not be resolved"
# fi
# ------------------------------------------------------------------------------
# Modified by Luxcium
# Original author Dongweiming <ciici123@gmail.com>
# get top process eating memory
# get top process eating cpu if not work try excute : export LC_ALL='C'
# top10 of the history
# ---- REDIS-CLI ---------------------------------------------------------------
# ----           ---------------------------------------------------------------
# SYMBOL_ITEM:IEX_CLOUD@JRI
################################################################################
######################
## POWER LEVEL 10 K ##
## AZUR ALIAS ##
# ################
# ## YARN ALIAS ##
# # npm i concurrently@latest
# # alias yarnu='npm install -g yarn@latest'
# # alias linters='yarn add --dev eslint-config-airbnb-base@latest eslint@latest eslint-config-prettier@latest eslint-plugin-import@latest eslint-plugin-unicorn@latest @typescript-eslint/parser@latest @typescript-eslint/eslint-plugin@latest tslint@latest'
# # alias gnlint='yarn add --glogal --dev eslint-config-airbnb-base@latest eslint@latest eslint-config-prettier@latest eslint-plugin-import@latest eslint-plugin-unicorn@latest @typescript-eslint/parser@latest @typescript-eslint/eslint-plugin@latest tslint@latest typescript@rc ts-node@latest'
# # alias ylint='linters'
# alias yarn2="yarn set version berry 1>& /dev/null || yarn set version latest; yarn install --immutable --immutable-cache;  yarn stage --commit; git add .yarn* package.json yarn.lock; git commit -m 'yarn update';push"
# alias yi1='concurrently  "rm yarn.lock" "rm -f package-lock.json" "rm -f pnpm-lock.yaml" "rm -rf node_modules"'
# #> /dev/null'
# alias yi2='yarn install --force --audit --link-duplicates --check-files;'
# alias yu='fnm install latest-erbium && \
#     fnm install latest && \
#    fnm use latest-erbium && \
#     fnm default $(node -v)'
# alias yg='yarn global add \
#   concurrently@latest yarn@latest typescript@3.9.0-dev.20200324 npm@latest ts-node@latest vsce@latest pnpm@latest  1> /dev/null &'
# # alias yi3='yarn add -D typescript@rc @types/node@latest ts-node@latest > /dev/null 2>&1 &'
# alias yi='yg; yu; yi1 ; yi2' # yi3'
# alias ya='yarn add --exact --audit --force --link-duplicates --check-files --no-progress'
# alias yb='yarn run build --force'
# alias yt='yarn run test'
# ###############
# ## NPM ALIAS ##
# alias npmu='npm install -g npm@latest'
# npmglobal='@types/node@latest npm-check-unused@latest npm-check-updates@latest npm-check@latest pnpm@latest prettier@latest ts-node@latest tslib@latest tslint@latest typescript@latest vsce@latest yarn@latest gulp-yaml@latest standard-version@latest bash-language-server@latest eslint@latest eslint-plugin-react@latest eslint-plugin-react@latest @typescript-eslint/parser@latest @typescript-eslint/eslint-plugin@latest eslint@latest prettier@latest eslint-conf-prettier@latest eslint-plugin-prettier@latest @nestjs/cli@latest'
# unnpmglobal='@types/node npm-check npm-check-unused npm-check-updates prettier ts-node tslib tslint typescript vsce yarn gulp-yaml standard-version bash-language-server eslint eslint-plugin-react eslint-plugin-react @typescript-eslint/parser @typescript-eslint/eslint-plugin eslint prettier eslint-conf-prettier eslint-plugin-prettier @nestjs/cli'
# # npm i -g install-peerdeps; npm i -g bash-language-server@latest; npm i -g @types/node@latest; npm i -g eslint@latest; npm i -g gulp-yaml@latest; npm i -g npm-check-unused@latest; npm i -g npm-check-updates@latest; npm i -g npm-check@latest; npm i -g pnpm@latest; npm i -g prettier@latest; npm i -g standard-version@latest; npm i -g tslib@latest; npm i -g tslint@latest; npm i -g typescript@latest; npm i -g vsce@latest; npm i -g yarn@latest; install-peerdeps -g @typescript-eslint/eslint-plugin; install-peerdeps -g @typescript-eslint/parser; install-peerdeps -g eslint-conf-prettier; install-peerdeps -g eslint-plugin-prettier; install-peerdeps -g eslint-plugin-react; install-peerdeps -g ts-node;
# alias NPMupdate="npm -g i npm@latest ${npmglobal}"
# alias PNPMupdate="pnpm -g i ${npmglobal}"
# alias unNPMupdate="npm -g un pnpm ${unnpmglobal}"
# alias unPNPMupdate="pnpm -g un npm ${unnpmglobal} pnpm"
# alias installNPMGlobal='npm i -g npm@latest && npm i -g pnpm@latest && NPMupdate && PNPMupdate'
# alias uninstallNPMGlobal='unPNPMupdate && unNPMupdate'
# alias reinstallNPMGlobal='uninstallNPMGlobal && echo "\n\n==============================\n\n" && installNPMGlobal && pnpm i -g pnpm'
# alias build='yarn run build'
# alias quick='yarn run quick'
# alias tests='yarn run test'
# alias rebuild='yarn run rebuild'
# alias debug='yarn run debug'
# alias nlist='npm list -g --depth 0'
# alias lsg='npm list -g --depth 0;yarn global list'
# alias lg=lsg
