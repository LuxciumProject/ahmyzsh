function dnfcup() {
  (
    (
      sudo dnf clean all &&
        sudo dnf makecache
    ) &&
      (
        (
          sudo nice -n -35 ionice -c 1 -n 2 dnf upgrade --downloadonly -y &
        ) >/dev/null
      ) 2>/dev/null
  ) &&
    sudo nice -n -15 ionice -c 1 -n 4 dnf upgrade --setopt=keepcache=1
}

function upnboot() {
  (
    (
      (
        sudo nice -n -5 ionice -c 1 -n 1 dnf upgrade --downloadonly --setopt=keepcache=1 -y &
      ) &
    ) >/dev/null
  ) 2>/dev/null

  sudo nice -n 15 dnf upgrade --setopt=keepcache=1 &&
    (enable_systemctl down &) &&
    (playshutdown &) &&
    sleep 4 &&
    sudo reboot &
  bye
}

function upnbootyes() {
  (
    (
      (
        sudo nice -n -5 ionice -c 1 -n 1 dnf upgrade --downloadonly --setopt=keepcache=1 -y &
      ) &
    ) >/dev/null
  ) 2>/dev/null

  sudo nice -n 15 dnf upgrade --setopt=keepcache=1 -y &&
    (enable_systemctl down &) &&
    (playshutdown &) &&
    sleep 4 &&
    sudo reboot &
  bye
}

alias playshutdown="(play -qv 0.25 /usr/share/sounds/deepin/stereo/system-shutdown.wav)"
alias upndown="dnfup && playshutdown& sleep 3; sudo shutdown now"
alias up="sudo nice -n -15 ionice -c 1 -n 3 dnf upgrade --setopt=keepcache=1 && sudo reboot"
# alias dnfup=""
