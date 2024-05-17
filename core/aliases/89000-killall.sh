#!/usr/bin/env bash

alias kchrome='killall chrome || killall chrome-stable'
alias kmsedge='killall msedge'
alias kkonsole='killall konsole'
alias kdolphin='killall dolphin'
alias kcode='killall code'
alias kkwrite='killall kwrite'
alias kgwenview='killall gwenview'

function killmore() {

    nohup bash -c "(

        sleep 0.125
        killall kwrite
    ) &

    (
        sleep 0.25
        killall gwenview
    ) &

    (
        sleep 0.5
        killall chrome || killall chrome-stable
    ) &

    (
        sleep 1
        killall dolphin
    ) &

    (
        sleep 1.25
        killall msedge
    ) &

    sleep 1.75
    killall konsole

    )" >/dev/null 2>&1 &
}
# >/dev/null 2>&1 &
# alias killmore=''
alias killmorecode='nohup bash -c "(sleep 1.5; killall code)" >/dev/null 2>&1 & killmore'
alias killcodemore='nohup bash -c "(sleep 1.5; killall code)" >/dev/null 2>&1 & killmore'

alias killchrome='kchrome'
alias killmsedge='kmsedge'
alias kmicrosoft-edge='kmsedge'
alias killmicrosoft-edge='kmsedge'
alias killkonsole='kkonsole'
alias killdolphin='kdolphin'
alias killcode='kcode'
alias killkwrite='kkwrite'
alias killgwenview='kgwenview'

alias reboot='nohup bash -c "(sleep 2; /sbin/reboot)" >/dev/null 2>&1 & nohup bash -c "(sleep 1.25; killall code)" >/dev/null 2>&1 & killmore &'
