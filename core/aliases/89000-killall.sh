#!/usr/bin/env bash

alias kchrome='killall chrome || killall chrome-stable'
alias kmsedge='killall msedge'
alias kkonsole='killall konsole'
alias kdolphin='killall dolphin'
alias kcode='killall code'
alias kkwrite='killall kwrite'
alias kgwenview='killall gwenview'

function killmore() {
    (

        sleep 0.125
        kkwrite
    ) &

    (
        sleep 0.25
        kgwenview
    ) &

    (
        sleep 0.5
        kchrome
    ) &

    (
        sleep 1
        kdolphin
    ) &

    (
        sleep 1.25
        kmsedge
    ) &

    sleep 1.75
    kkonsole
}

# alias killmore=''
alias killmorecode='(sleep 1.5; kcode) & killmore'
alias killcodemore='(sleep 1.5; kcode) & killmore'

alias killchrome='kchrome'
alias killmsedge='kmsedge'
alias kmicrosoft-edge='kmsedge'
alias killmicrosoft-edge='kmsedge'
alias killkonsole='kkonsole'
alias killdolphin='kdolphin'
alias killcode='kcode'
alias killkwrite='kkwrite'
alias killgwenview='kgwenview'
