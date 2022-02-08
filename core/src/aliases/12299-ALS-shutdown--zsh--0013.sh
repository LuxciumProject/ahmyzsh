alias grubreboot='sudo dnf upgrade && (sudo dracut --uefi --force -v  && sudo grub2-mkconfig -o /boot/efi/EFI/fedora/grub.cfg || exit 1) && sudo dkms autoinstall --verbose --all --force && sudo akmods --from-init --verbose --force && echo ―OK― && sleep 2 # && exit 0'

# alias playshutdown="(play -qv 0.25 /usr/share/sounds/deepin/stereo/system-shutdown.wav)"
# alias dnfup="( ( (sudo nice -n -15 ionice -c 1 -n 1 dnf upgrade --downloadonly --setopt=keepcache=1 -y &) &)>/dev/null)2>/dev/null; sudo nice -n 15 dnf upgrade --setopt=keepcache=1"

# function dnfcup() {
#   (
#     (
#       sudo dnf clean all &&
#         dnf makecache
#     ) &&
#       ( (
#         sudo nice -n -15 ionice -c 1 -n 2 dnf upgrade --downloadonly -y &
#       ) >/dev/null) 2>/dev/null
#   )
#   sudo nice -n -15 ionice -c 2 -n 0 dnf upgrade --setopt=keepcache=1
# }

# alias up="sudo nice -n -15 ionice -c 2 -n 3 dnf upgrade --setopt=keepcache=1 && sudo reboot"

# alias upndown="dnfup && playshutdown& sleep 3; sudo shutdown now"

# function upnboot() {
#   dnfup &&
#     enable_systemctl down &&
#     (playshutdown &) &&
#     sleep 3.5 &&
#     sudo reboot &
#   bye
# }
