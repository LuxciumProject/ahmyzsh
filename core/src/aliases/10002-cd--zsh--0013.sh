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
alias vscacorn="__vsCodeTarget '${HOME}/src/temp/acorn'"                              # temp/acorn
alias vsccli="__vsCodeTarget '${HOME}/src/temp/cli'"                                  # temp/cli
alias vsceslint="__vsCodeTarget '${HOME}/src/temp/eslint'"                            # temp/eslint
alias vscespree="__vsCodeTarget '${HOME}/src/temp/espree'"                            # temp/espree
alias vscfpts="__vsCodeTarget '${HOME}/src/temp/fp-ts'"                               # temp/fpts
alias vscmocha="__vsCodeTarget '${HOME}/src/temp/mocha'"                              # temp/mocha
alias vscnode="__vsCodeTarget '${HOME}/src/temp/node'"                                # temp/node
alias vscPython="__vsCodeTarget '${HOME}/src/temp/Python-3.9.5'"                      # temp/Python-3.9.5
alias vscsyntax="__vsCodeTarget '${HOME}/src/temp/syntax'"                            # temp/syntax
alias vscTypeScript="__vsCodeTarget '${HOME}/src/temp/TypeScript'"                    # temp/TypeScript
alias vscvscode="__vsCodeTarget '${HOME}/src/temp/vscode'"                            # temp/vscode
alias vscworkerpool="__vsCodeTarget '${HOME}/src/temp/workerpool'"                    # temp/workerpool
alias vsczsh-code="__vsCodeTarget '${HOME}/src/temp/zsh-code'"                        # temp/zsh-code
alias vsc100-days-of-code="__vsCodeTarget '${HOME}/src/100-days-of-code'"             # 100-days-of-code
alias vscchroma.js="__vsCodeTarget '${HOME}/src/chroma.js'"                           # chroma.js
alias vsccolor-math="__vsCodeTarget '${HOME}/src/color-math'"                         # color-math
alias vschexSorter="__vsCodeTarget '${HOME}/src/hexSorter'"                           # hexSorter
alias vsciexjs="__vsCodeTarget '${HOME}/src/iexjs'"                                   # iexjs
alias vscjacobo-test="__vsCodeTarget '${HOME}/src/jacobo-test'"                       # jacobo-test
alias vscnestjs-colligated-docs="__vsCodeTarget '${HOME}/src/nestjs-colligated-docs'" # nestjs-colligated-docs
alias vscpmap="__vsCodeTarget '${HOME}/src/parallel-mapping'"                         # parallel-mapping
alias vscregexp-tree="__vsCodeTarget '${HOME}/src/regexp-tree'"                       # regexp-tree
alias vscsecond_iex="__vsCodeTarget '${HOME}/src/second_iex'"                         # second_iex
alias vsctelegram-bot-api="__vsCodeTarget '${HOME}/src/telegram-bot-api'"             # telegram-bot-api
alias vscv4l2loopback="__vsCodeTarget '${HOME}/src/v4l2loopback'"                     # v4l2loopback
# alias vsctemp="__vsCodeTarget '${HOME}/src/temp'" # temp

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
