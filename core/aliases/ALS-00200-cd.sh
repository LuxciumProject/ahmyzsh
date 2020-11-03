# gh repo clone openAVproductions/openAV-Ctlra

alias cdsrc="cd /home/luxcium/src"
alias cdev="cd /home/luxcium/dev"


    function cdir() {
        mkdir -p  "$1" &&
            cd  "$1"
    }
    alias cmdir=cdir
