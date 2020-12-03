# gh repo clone openAVproductions/openAV-Ctlra

alias cdsrc="cd /home/luxcium/src"
alias csrc="cd /home/luxcium/src"
alias cdev="cd /home/luxcium/dev"
alias cddev="cd /home/luxcium/dev"
alias cdtmp="cd /tmp"
alias ctmp="cd /tmp"

function cdir() {
  mkdir -p "$1" \
    && cd "$1"
}
alias cmdir=cdir
