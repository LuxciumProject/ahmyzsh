# gh repo clone openAVproductions/openAV-Ctlra

alias cdsrc='cd /home/luxcium/src'
alias csrc='cd /home/luxcium/src'
alias cddev='cd /home/luxcium/dev'
alias cdev='cd /home/luxcium/dev'
alias cdtmp='cd /tmp'
alias ctmp='cd /tmp'

function cdir() {
  mkdir -p "$1" &&
    cd "$1"
}
alias cmdir='cdir'

alias cdetc='cd /etc'
alias cetc='cd /etc'
alias cdusr='cd /usr'
alias cusr='cd /usr'
alias cdopt='cd /opt'
alias copt='cd /opt'
alias cdvar='cd /var'
alias cvar='cd /var'

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
