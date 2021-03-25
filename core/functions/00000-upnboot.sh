# update and reboot
function upnboot() {
  _get_updates
  _dnfup "${1}"
  (
    nohup enable_systemctl down &
    sleep 1
    nohup play_shutdown reboot 4 &
  ) &
  bye

}

# update and reboot
function boot() {
  (
    nohup enable_systemctl down &
    sleep 1
    nohup play_shutdown reboot 4 &
  ) &
  bye

}

# update and reboot --assumeyes
function upnbooty() {
  _get_updates
  _dnfup "--assumeyes ${1}"
  (
    nohup enable_systemctl down &
    sleep 1
    nohup play_shutdown reboot 4 &
  ) &
  bye
}

# update and shutdown
function upnshutdown() {
  _get_updates
  _dnfup
  nohup enable_systemctl down &
  nohup play_shutdown shutdown 4 &
  bye

}

function _dnf_clean_all() {
  echo "CLEAN ALL:"
  sudo nice -n -10 ionice -c 1 -n 2 dnf clean all --refresh
  echo ""
}

function _dnf_makecache() {
  echo "MAKECACHE:"
  sudo nice -n -10 ionice -c 1 -n 2 dnf makecache --refresh
  echo ""
}

# download updates
function _get_updates() {
  (
    (
      (sudo nice -n -10 ionice -c 1 -n 2 dnf upgrade --downloadonly --setopt=keepcache=1 --assumeyes) &
    ) >/dev/null
  ) 2>/dev/null
}

# inatall updates
function _dnfup() {
  sudo nice -n -15 ionice -c 1 -n 2 dnf upgrade --setopt=keepcache=1 $1
}
