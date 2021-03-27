# update and reboot
source $HOME/ahmyzsh/core/aliases/12012-ALS-sounds.sh
function upnboot() {

  _get_updates
  _dnfup "${1}"
  (
    _play_down_sound "reboot"
  ) &
  sleep 0.75
  bye

}

# update and reboot
function boot() {
  (
    _play_down_sound "reboot"
  ) &
  sleep 0.75
  bye

}

# update and reboot --assumeyes
function upnbooty() {
  source $HOME/ahmyzsh/core/aliases/12012-ALS-sounds.sh
  play_011
  _get_updates
  _dnfup "--assumeyes ${1}"
  (
    _play_down_sound "reboot"
  ) &
  sleep 0.75
  bye
}

# update and shutdown
function upnshutdown() {
  _get_updates
  _dnfup
  (
    _play_down_sound "shutdown"
  ) &
  sleep 0.75
  bye

}

function _dnf_clean_all() {
  echo "CLEAN ALL:"
  sudo nice -n -35 ionice -c 1 -n 1 dnf clean all --refresh
  echo ""
}

function _dnf_makecache() {
  echo "MAKECACHE:"
  sudo nice -n -35 ionice -c 1 -n 1 dnf makecache --refresh
  echo ""
}

# download updates
function _get_updates() {

  (
    (
      (
        source /home/luxcium/ahmyzsh/core/aliases/12012-more-sounds.sh
        source /home/luxcium/ahmyzsh/core/aliases/12012-ALS-sounds.sh
        play_019
        sudo nice -n -35 ionice -c 1 -n 1 dnf upgrade --downloadonly --setopt=keepcache=1 --assumeyes && play-phone_0045 || play_etc-dialog
      ) &
    ) >/dev/null
  ) 2>/dev/null
}

# inatall updates
function _dnfup() {
  sudo nice -n -15 ionice -c 1 -n 2 dnf upgrade --setopt=keepcache=1 $1
}

function _play_down_sound() {
  (
    (
      (nohup enable_systemctl down &) >/dev/null
    ) 2>/dev/null
    sleep 8.5 # for information pupose only should be disabled
  ) &
  sleep 1

  (
    (nohup play_shutdown $1 5 &) >/dev/null
  ) 2>/dev/null

}
