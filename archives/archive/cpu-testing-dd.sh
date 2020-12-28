# ------- CPU TESTING WITH DD NOTHING TO NOWHERE -------------------------------

function ddsoft() {
  (
    sudo ionice -c 3 nice -n 35 dd if=/dev/zero of=/dev/null &
  )
}

function ddhard() {
  (
    sudo ionice -c 1 -n 0 nice -n -35 dd if=/dev/zero of=/dev/null &
  )
}

function dd4soft() {
  (
    ddsoft
    ddsoft
    ddsoft
    ddsoft
  )
}

function dd4hard() {
  (
    ddhard
    ddhard
    ddhard
    ddhard
  )
}

function dd5soft() {
  (
    ddsoft
    ddsoft
    ddsoft
    ddsoft
    ddsoft
  )
}

function dd5hard() {
  (
    ddhard
    ddhard
    ddhard
    ddhard
    ddhard
  )
}

alias dd4='(
    echo "4 softs dd moving nothing to nowhere the for 40 seconds"
    sudo killall dd &>/dev/null && echo "max 4 at the time for max 40 seconds"
  (
      dd4soft
    )
    (
      sleep 40
      echo "killall dd"
      sudo killall dd
    )
  )&'

alias hardd4='(
    echo "4 hards dd moving nothing to nowhere the for 40 seconds"
    sudo killall dd &>/dev/null && echo "max 4 at the time for max 40 seconds"
    (
      dd4hard
    )
    (
      sleep 40
      echo "killall dd"
      sudo killall dd &>/dev/null
    )
  ) &'

alias dd5='(
    echo "5 softs dd moving nothing to nowhere the for 20 seconds"
    sudo killall dd &>/dev/null && echo "max 5 at the time for max 20 seconds"
    (
      dd5soft
    )
    (
      sleep 20
      echo "killall dd"
      sudo killall dd
    )
  )&'

alias hardd5='(
    echo "5 hards dd moving nothing to nowhere the for 20 seconds"
    sudo killall dd &>/dev/null && echo "max 5 at the time for max 20 seconds"
    (
      dd5hard
    )
    (
      sleep 20
      echo "killall dd"
      sudo killall dd &>/dev/null
    )
  ) &'

alias dd10='(
    echo "10 softs dd moving nothing to nowhere the for 15 seconds"
    sudo killall dd &>/dev/null && echo "max 15 at the time for max 15 seconds"
    (
      dd5soft
      dd5soft
    )
    (
      sleep 15
      echo "killall dd"
      sudo killall dd &>/dev/null
    )
  ) &'

alias hardd10='(
    echo "10 hards dd moving nothing to nowhere the for 15 seconds"
    sudo killall dd &>/dev/null && echo "max 15 at the time for max 15 seconds"
    (
      dd5hard
      dd5hard
    )
    (
      sleep 15
      echo "killall dd"
      sudo killall dd &>/dev/null
    )
  ) &'

alias dd15='(
    echo "15 softs dd moving nothing to nowhere the for 10 seconds"
    sudo killall dd &>/dev/null && echo "max 15 at the time for max 10 seconds"
    (
      dd5soft
      dd5soft
      dd5soft
    )
    (
      sleep 10
      echo "killall dd"
      sudo killall dd &>/dev/null
    )
  ) &'

alias hsrdd15='(
    echo "15 hards dd moving nothing to nowhere the for 10 seconds"
    sudo killall dd &>/dev/null && echo "max 15 at the time for max 10 seconds"
    (
      dd5hard
      dd5hard
      dd5hard
    )
    (
      sleep 10
      echo "killall dd"
      sudo killall dd &>/dev/null
    )
  ) &'

alias dd20='(
    echo "20 softs dd moving nothing to nowhere the for 5 seconds"
    sudo killall dd &>/dev/null && echo "max 20 at the time for max 5 seconds"
    (
      dd5soft
      dd5soft
      dd5soft
      dd5soft
    )
    (
      sleep 5
      echo "killall dd"
      sudo killall dd &>/dev/null
    )
  ) &'

alias hardd20='(
    echo "20 hards dd moving nothing to nowhere the for 5 seconds"
    sudo killall dd &>/dev/null && echo "max 20 at the time for max 5 seconds"
    (
      dd5hard
      dd5hard
      dd5hard
      dd5hard
    )
    (
      sleep 5
      echo "killall dd"
      sudo killall dd &>/dev/null
    )
  ) &'

alias lxid='(echo -n "$(uxid)")'
alias getuxid='(TMPUXIDGET="$(uxid)"; echo -n "${TMPUXIDGET}"; unset -v TMPUXIDGET)'
alias getuxid0='(TMPUXIDGET="$(uxid)"; echo -n "${TMPUXIDGET}"; unset -v TMPUXIDGET)'
# alias getuxid1='(TMPUXIDGET="$(uxid)"; echo -n "${TMPUXIDGET:0:0}A"; unset -v TMPUXIDGET)'
# alias getuxid2='(TMPUXIDGET="$(uxid)"; echo -n "${TMPUXIDGET:0:1}B"; unset -v TMPUXIDGET)'
# alias getuxid3='(TMPUXIDGET="$(uxid)"; echo -n "${TMPUXIDGET:0:2}C"; unset -v TMPUXIDGET)'
# alias getuxid4='(TMPUXIDGET="$(uxid)"; echo -n "${TMPUXIDGET:0:3}D"; unset -v TMPUXIDGET)'
# alias getuxid5='(TMPUXIDGET="$(uxid)"; echo -n "${TMPUXIDGET:0:4}E"; unset -v TMPUXIDGET)'
# alias getuxid6='(TMPUXIDGET="$(uxid)"; echo -n "${TMPUXIDGET:0:5}F"; unset -v TMPUXIDGET)'
alias getuxid7='(TMPUXIDGET="$(uxid)"; echo -n "${TMPUXIDGET:0:6}G"; unset -v TMPUXIDGET)'
alias getuxid8='(TMPUXIDGET="$(uxid)"; echo -n "${TMPUXIDGET:0:7}H"; unset -v TMPUXIDGET)'
alias getuxid9='(TMPUXIDGET="$(uxid)"; echo -n "${TMPUXIDGET:0:8}I"; unset -v TMPUXIDGET)'
alias getuxid10='(TMPUXIDGET="$(uxid)"; echo -n "${TMPUXIDGET:0:9}J"; unset -v TMPUXIDGET)'
alias getuxid11='(TMPUXIDGET="$(uxid)"; echo -n "${TMPUXIDGET:0:10}K"; unset -v TMPUXIDGET)'
alias getuxid12='(TMPUXIDGET="$(uxid)"; echo -n "${TMPUXIDGET:0:11}L"; unset -v TMPUXIDGET)'
alias getuxid13='(TMPUXIDGET="$(uxid)"; echo -n "${TMPUXIDGET:0:12}M"; unset -v TMPUXIDGET)'
alias getuxid14='(TMPUXIDGET="$(uxid)"; echo -n "${TMPUXIDGET:0:13}N"; unset -v TMPUXIDGET)'
alias getuxid15='(TMPUXIDGET="$(uxid)"; echo -n "${TMPUXIDGET:0:13}XV"; unset -v TMPUXIDGET)'
alias getuxid16='(TMPUXIDGET="$(uxid)"; echo -n "${TMPUXIDGET:0:15}P"; unset -v TMPUXIDGET)'
alias getuxid17='(TMPUXIDGET="$(uxid)"; echo -n "${TMPUXIDGET:0:16}Q"; unset -v TMPUXIDGET)'
alias getuxid18='(TMPUXIDGET="$(uxid)"; echo -n "${TMPUXIDGET:0:17}R"; unset -v TMPUXIDGET)'
alias getuxid19='(TMPUXIDGET="$(uxid)"; echo -n "${TMPUXIDGET:0:18}S"; unset -v TMPUXIDGET)'
alias getuxid20='(TMPUXIDGET="$(uxid)"; echo -n "${TMPUXIDGET:0:19}T"; unset -v TMPUXIDGET)'
alias getuxid21='(TMPUXIDGET="$(uxid)"; echo -n "${TMPUXIDGET:0:20}U"; unset -v TMPUXIDGET)'
alias getuxid22='(TMPUXIDGET="$(uxid)"; echo -n "${TMPUXIDGET:0:21}V"; unset -v TMPUXIDGET)'
alias getuxid23='(TMPUXIDGET="$(uxid)"; echo -n "${TMPUXIDGET:0:22}W"; unset -v TMPUXIDGET)'
alias getuxid24='(TMPUXIDGET="$(uxid)"; echo -n "${TMPUXIDGET:0:23}X"; unset -v TMPUXIDGET)'
alias getuxid25='(TMPUXIDGET="$(uxid)"; echo -n "${TMPUXIDGET:0:24}Y"; unset -v TMPUXIDGET)'
alias getuxid26='(TMPUXIDGET="$(uxid)"; echo -n "${TMPUXIDGET:0:25}Z"; unset -v TMPUXIDGET)'

# X20X20X
# X20X20XH
# X20X20X0I
# X20X20X07X
# X20X20X07XK
# X20X20X07X1L
# X20X20X07X19X
# X20X20X07X19XN
# X20X20X07X19XXV
# X20X20X07X19X14X
# X20X20X07X19X14XQ
# X20X20X07X19X14X1R
# X20X20X07X19X14X11X
# X20X20X07X19X14X11X
# X20X20X07X19X14X11X
# X20X20X07X19X14X11X
# X20X20X07X19X14X11X
# X20X20X07X19X14X11X
# X20X20X07X19X14X11X
# X20X20X07X19X14X11X
