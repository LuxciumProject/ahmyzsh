# clean and get updates:
function dnfcup() {
  _dnf_clean_all && _get_updates
  echo ""
  echo "UPGRADE:"
  sudo nice -n -5 ionice -c 2 -n 0 dnf upgrade --setopt=keepcache=1 --assumeno
  echo ""
  echo "DISTRO-SYNC:"
  sudo nice -n -5 ionice -c 2 -n 0 dnf distro-sync --setopt=keepcache=1 --assumeno
}

# update and reboot
function upnboot() {
  _get_updates
  _dnfup
  enable_systemctl down
  play_shutdown reboot
}

# update and shutdown
function upnshutdown() {
  _get_updates
  _dnfup
  enable_systemctl down
  play_shutdown shutdown
}

# update and reboot --assumeyes
function upnbooty() {
  _get_updates
  _dnfup --assumeyes
  enable_systemctl down
  play_shutdown
}

# _dnf_clean_all
function _dnf_clean_all() {
  sudo dnf clean all --refresh
  sudo dnf makecache --refresh
}

# download updates
function _get_updates() {
  (
    (
      (sudo nice -n -15 ionice -c 1 -n 0 dnf upgrade --downloadonly --setopt=keepcache=1 --assumeyes) &
    ) >/dev/null
  ) 2>/dev/null
}

# inatall updates
function _dnfup() {
  sudo nice -n -10 ionice -c 1 -n 2 dnf upgrade --setopt=keepcache=1 $1
}
