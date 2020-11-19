alias playshutdown="(play -qv 0.25 /usr/share/sounds/deepin/stereo/system-shutdown.wav)"
alias dnfup="( ( (sudo nice -n -35 ionice -c 1 -n 0 dnf upgrade --downloadonly --setopt=keepcache=1 -y &) &)>/dev/null)2>/dev/null; sudo nice -n 15 dnf upgrade --setopt=keepcache=1"

function dnfcup() {
  ( 
    (
      sudo dnf clean all &&
        dnf makecache
    ) &&
      ( (
        sudo nice -n -35 ionice -c 1 -n 2 dnf upgrade --downloadonly -y &
      ) >/dev/null) 2>/dev/null
  )
  sudo nice -n -15 ionice -c 1 -n 4 dnf upgrade --setopt=keepcache=1
}

alias upnboot="dnfup && playshutdown& sleep 3.5; sudo reboot"
alias up="sudo nice -n -15 ionice -c 1 -n 3 dnf upgrade --setopt=keepcache=1 && sudo reboot"
