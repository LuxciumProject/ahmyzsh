# gh repo clone openAVproductions/openAV-Ctlra

alias cdtemp='cd /home/luxcium/src/temp'
alias ctemp='cd /home/luxcium/src/temp'
alias cdsrc='cd /home/luxcium/src'
alias csrc='cd /home/luxcium/src'
alias cddev='cd /home/luxcium/dev'
alias cdev='cd /home/luxcium/dev'
alias cdtmp='cd /tmp'
alias ctmp='cd /tmp'

alias cdetc='cd /etc'
alias cetc='cd /etc'
alias cdusr='cd /usr'
alias cusr='cd /usr'
alias cdopt='cd /opt'
alias copt='cd /opt'
alias cdvar='cd /var'
alias cvar='cd /var'

alias cdapp='cd /usr/share/applications/'
alias capp='cd /usr/share/applications/'

function cdir() {
  mkdir -p "$1" &&
    cd "$1"
}
alias cmdir='cdir'

alias cmtmp='cd $(mktemp -d)'

function __vsCodeTarget() {
  (
    TARGET_=$1
    cd $TARGET_
    code $TARGET_
  )
}
# alias=( TARGET_=''; cd $TARGET_; code $TARGET_ )
alias vscacorn="__vsCodeTarget '${HOME}/src/temp/acorn'"
alias vsccli="__vsCodeTarget '${HOME}/src/temp/cli'"
alias vsceslint="__vsCodeTarget '${HOME}/src/temp/eslint'"
alias vscespree="__vsCodeTarget '${HOME}/src/temp/espree'"
alias vscfpts="__vsCodeTarget '${HOME}/src/temp/fp-ts'"
alias vscmocha="__vsCodeTarget '${HOME}/src/temp/mocha'"
alias vscnode="__vsCodeTarget '${HOME}/src/temp/node'"
alias vscPython-3.9.5="__vsCodeTarget '${HOME}/src/temp/Python-3.9.5'"
alias vscsyntax="__vsCodeTarget '${HOME}/src/temp/syntax'"
alias vscTypeScript="__vsCodeTarget '${HOME}/src/temp/TypeScript'"
alias vscvscode="__vsCodeTarget '${HOME}/src/temp/vscode'"
alias vscworkerpool="__vsCodeTarget '${HOME}/src/temp/workerpool'"
alias vsczsh-code="__vsCodeTarget '${HOME}/src/temp/zsh-code'"

#bin
#boot
#com
#dev
#dracut.conf.d
#etc
#home
#lib
#lib64
#lost+found
#media
#mnt
#modules.d
#opt
#proc
#root
#run
#sbin
#snap
#srv
#stratis
#sys
#tmp
#usr
#var
