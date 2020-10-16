alias playshutdown="(play -qv 0.25 /usr/share/sounds/deepin/stereo/system-shutdown.wav)"
alias dnfup="( ( (sudo nice -n -35 ionice -c 1 -n 0 dnf upgrade --downloadonly -y &) &)>/dev/null)2>/dev/null; sudo nice -n 15 dnf upgrade"
alias upnboot="dnfup && playshutdown& sleep 4.5;sudo reboot"
alias up="sudo nice -n -15 ionice -c 1 -n 3 dnf upgrade && sudo reboot& bye"
