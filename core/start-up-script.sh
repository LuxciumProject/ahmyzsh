#!/usr/bin/env zsh

echo "Start Up Script begin"
enable_startup_
# (play -qv 0.21 /usr/share/sounds/Oxygen-Sys-Log-In-Short.ogg &) # chorus 0.4 0.9 50 0.5 0.25 2 -t 40 0.6 0.2 3 -s 60 0.6 0.3 1.3 -t
sudo systemctl enable abrtd.service
(
  (nice -10 code-insiders /home/luxcium/ahmyzsh) &

  (
    (nice -5 ionice -c 2 -n 0 sudo fc-cache -rfE)
    (nice -5 ionice -c 2 -n 0 fc-cache -rfE)
  ) &

  (
    eval $(fnm env)
    (nice -5 ionice -c 2 -n 0 fnm install 8) &
    (nice -5 ionice -c 2 -n 0 fnm install 10) &
    (nice -5 ionice -c 2 -n 0 fnm install 12) &
    (nice -5 ionice -c 2 -n 0 fnm install 14) &
    (nice -5 ionice -c 2 -n 0 fnm install 15 && fnm default 15 && fnm use default)
  ) &

  (nice -5 ionice -c 2 -n 0 conda update conda -y && nice -5 ionice -c 2 -n 0 conda update --all -y)

  # (play -qv 0.1 /usr/share/sounds/Oxygen-Im-Phone-Ring.ogg &)

  sudo ionice -c 1 -n 0 -p $(pidof Xorg)
)

sudo systemctl enable ModemManager.service
sudo systemctl start ModemManager.service
sudo systemctl enable bluetooth.service
sudo systemctl start bluetooth.service
sudo systemctl enable NetworkManager.service
sudo systemctl start NetworkManager.service
sudo systemctl enable akmods
sudo systemctl start akmods
sudo akmods
sudo systemctl enable abrtd.service
sudo systemctl start abrtd.service
sudo systemctl enable avahi-daemon.service
sudo systemctl start avahi-daemon.service
sudo systemctl enable containerd.service
sudo systemctl enable docker.socket
sudo systemctl enable docker.service
sudo systemctl start containerd.service
sudo systemctl start docker.socket
sudo systemctl start docker.service

echo -e "Start Up Script finishes \a"
(play -qv 0.75 /usr/share/sounds/Oxygen-Im-Sms.ogg tremolo 10 100 chorus 0.4 0.9 50 0.5 0.25 2 -t 40 0.6 0.2 3 -s 60 0.6 0.3 1.3 -t &)

exit 0

# (
#   cd /usr/src/v4l2loopback &&
#     make clean &&
#     git pull origin &&
#     sudo make &&
#     sudo make install &&
#     sudo depmod -a -v &&
#     sudo modprobe -v v4l2loopback &&
#     cd /sys/devices/virtual/video4linux/
# ) || echo "ERROR"

# sudo wall -n "$(gphoto2 --abilities)"
