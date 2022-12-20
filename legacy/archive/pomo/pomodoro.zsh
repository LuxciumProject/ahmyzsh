min_=60
POMODORO=$((25 * min_))
POMODORI=$((5 * min_))

: ${HOME:="/home/luxcium"}
: ${AHMYZSH:="${HOME}/ahmyzsh"}
: ${CUSTOM_ZSH:="${AHMYZSH}/custom-zsh"}
: ${CUSTOM_ZSH_BIN:="${CUSTOM_ZSH}/bin"}
: ${POMODORO:="${CUSTOM_ZSH_BIN}/pomodoro.zsh"}

function pomodoro25_() {
  echo 'MAXI POMODORO 25 MINUTES'
  bell1
  local POMODORO=$((22 * min_))
  bell4
  sleep ${POMODORO}
  sleep 54.8
  sleep 45.3
  sleep 54.8
  bell1
}

function pomodoro20_() {
  echo 'MINI POMODORO 20 MINUTES'
  bell1
  local POMODORO=$((17 * min_))
  bell3
  sleep ${POMODORO}
  sleep 54.8
  sleep 51.8
  sleep 54.8
  bell1
}

function pomodoro15_() {
  echo 'NANO POMODORO 15 MINUTES'
  bell1
  local POMODORO=$((12 * min_))
  bell8
  sleep ${POMODORO}
  sleep 54.8
  sleep 49.7
  sleep 54.8
  bell1
}

function pomodori10_() {
  echo 'MAXI POMODORI 10 MINUTES (PAUSE)'
  bell2
  local POMODORI=$((7 * min_))
  bell6
  sleep ${POMODORI}
  sleep 51.8
  sleep 2.6
  sleep 51.8
  bell2
}

function pomodori5_() {
  echo 'MINI POMODORI 5 MINUTES (PAUSE)'
  bell2
  local POMODORI=$((2 * min_))
  bell9
  sleep ${POMODORI}
  sleep 51.8
  sleep 39.8
  sleep 51.8
  bell2
}

function minipomodori_() {
  echo Début mini cycle de 45 minutes
  pomodoro20_
  pomodori5_
  pomodoro15_
  pomodori5_
}

function minipomodoro45m_() {
  minipomodori_
}
function minipomodoro90m_() {
  echo 2 mini cycles total de 90 minutes
  minipomodori_
  minipomodori_
}

function minipomodoro3h_() {
  echo 4 mini cycles total de 3 heures
  minipomodori_
  minipomodori_
  minipomodori_
  minipomodori_
}

function maxipomodoro60m_() {
  pomodoro25_
  pomodori5_
  pomodoro25_
  pomodori5_
}

function debutcycle90minutes_() {
  bell1
  bell_ting
  bell_ting
  bell_ting
  bell10
  # sleep 55.8
  # sleep 55.8
  # sleep 55.8
  # sleep 54.9
  # sleep 54.8
  # sleep 5040
  # bell1
  # sleep 54.8
}

function attentecycle90minutes_() {
  # bell1
  # bell_ting
  # bell_ting
  # bell_ting
  # bell10
  sleep 55.8
  sleep 55.8
  sleep 55.8
  sleep 54.9
  sleep 54.8
  sleep 5040
  # bell1
  # sleep 54.8
}

function fincycle90minutes_() {
  # bell1
  # bell_ting
  # bell_ting
  # bell_ting
  # bell10
  # sleep 55.8
  # sleep 55.8
  # sleep 55.8
  # sleep 54.9
  # sleep 54.8
  # sleep 5040
  bell1
  sleep 54.8
}

function cycle90minutes_() {
  echo Début cycle de 90 minutes
  debutcycle90minutes_
  attentecycle90minutes_
  fincycle90minutes_
}

function cycle3heures_() {
  echo cycle de 3 h
  cycle90minutes_
  cycle90minutes_
}

function cycle6heures_() {
  echo cycle de 6 h
  cycle90minutes_
  cycle90minutes_
  cycle90minutes_
  cycle90minutes_
}

function cycle7heures_() {
  echo cycle de 7.5 h
  cycle90minutes_
  cycle90minutes_
  cycle90minutes_
  cycle90minutes_
  cycle90minutes_
}

function cycle9heures_() {
  echo cycle de 9 h
  cycle90minutes_
  cycle90minutes_
  cycle90minutes_
  cycle90minutes_
  cycle90minutes_
}

function cycle12heures_() {
  echo cycle de 12 h
  cycle6heures_
  cycle6heures_
}

function cycle24heures_() {
  echo cycle de 24 h
  cycle12heures_
  cycle12heures_
}

# bell1; sleep 54.8 # //      5.1889s elevator
# bell2; sleep 51.8 # //      8.2443s ding
# bell3; sleep 51.8 # //      8.2024s round
# bell4; sleep 45.3 # //      14.7364s resonant medium
# bell5; sleep 57.9 # //      2.1095s metal bowl
# bell6; sleep 2.6 # //       57.3887s singing bowl mallet
# bell7; sleep 45.7 # //      14.3313s round medium
# bell8; sleep 49.7 # //      10.2877s round medium resonant
# bell9; sleep 39.8 # //      20.1896s ding
# bell10; sleep 54.9 # //     5.1338s ding resonant
# bell_ting; sleep 55.8 # //  4.1732s  small ting...
