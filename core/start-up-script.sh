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

sudo wall $(sudo systemctl enable ModemManager.service)
sudo wall $(sudo systemctl start ModemManager.service)
sudo wall $(sudo systemctl enable bluetooth.service)
sudo wall $(sudo systemctl start bluetooth.service)
sudo wall $(sudo systemctl enable NetworkManager.service)
sudo wall $(sudo systemctl start NetworkManager.service)
sudo wall $(sudo systemctl enable akmods)
sudo wall $(sudo systemctl start akmods)
sudo wall $(sudo akmods)
sudo wall $(sudo systemctl enable abrtd.service)
sudo wall $(sudo systemctl start abrtd.service)
sudo wall $(sudo systemctl enable avahi-daemon.service)
sudo wall $(sudo systemctl start avahi-daemon.service)
sudo wall $(sudo systemctl enable containerd.service)
sudo wall $(sudo systemctl enable docker.socket)
sudo wall $(sudo systemctl enable docker.service)
sudo wall $(sudo systemctl start containerd.service)
sudo wall $(sudo systemctl start docker.socket)
sudo wall $(sudo systemctl start docker.service)

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
