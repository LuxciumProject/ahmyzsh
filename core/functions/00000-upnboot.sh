export WAITTIME=2
export SLEEPTIME=1
# update and reboot
source /home/luxcium/ahmyzsh/core/aliases/12010-dnf.sh
source /home/luxcium/ahmyzsh/core/aliases/12012-ALS-sounds.sh

function upnboot() {
  source $HOME/ahmyzsh/core/aliases/12012-ALS-sounds.sh
  play_014
  _get_updates
  _dnfup "${1}"
  (
    _play_down_sound "reboot"
  ) &
  sleep ${SLEEPTIME}
  bye

}

# update and reboot --assumeyes
function upnbooty() {
  # source $HOME/ahmyzsh/core/aliases/12012-ALS-sounds.sh
  # play_014
  # _get_updates
  upnboot "--assumeyes ${1}"
  # (
  #    _play_down_sound "reboot"
  # ) &
  # sleep ${SLEEPTIME}
  # bye
}

# update and reboot
function boot() {
  source $HOME/ahmyzsh/core/aliases/12012-ALS-sounds.sh
  play_014
  (
    _play_down_sound "reboot"
  ) &
  sleep ${SLEEPTIME}
  bye
}

# update and shutdown
function upnshutdown() {
  source $HOME/ahmyzsh/core/aliases/12012-ALS-sounds.sh
  play_014
  _get_updates
  _dnfup
  (
    _play_down_sound "shutdown"
  ) &
  sleep ${SLEEPTIME}
  bye

}

function _play_down_sound() {
  (
    (
      (nohup enable_systemctl down &) >/dev/null
    ) 2>/dev/null
    # sleep 8 # for information pupose only should be disabled
  ) &
  sleep ${WAITTIME}
  (
    (nohup play_shutdown $1 4 &) >/dev/null
  ) 2>/dev/null
}
