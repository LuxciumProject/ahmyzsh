#!/usr/bin/env zsh

echo "Start Up Script begin"
enable_systemctl up &

(
  (nice -10 code-insiders /home/luxcium/ahmyzsh) &

  (
    (nice -5 ionice -c 2 -n 0 sudo fc-cache -rfE)
    (nice -5 ionice -c 2 -n 0 fc-cache -rfE)
  ) &

  (
    eval $(fnm env)
    (nice -5 ionice -c 2 -n 0 fnm install 10) &
    (nice -5 ionice -c 2 -n 0 fnm install 12) &
    (nice -5 ionice -c 2 -n 0 fnm install 14) &
    (nice -5 ionice -c 2 -n 0 fnm install 15 && fnm default 15 && fnm use default)
  ) &

  (nice -5 ionice -c 2 -n 0 conda update conda -y && nice -5 ionice -c 2 -n 0 conda update --all -y)

)

(play -qv 0.75 /usr/share/sounds/Oxygen-Im-Sms.ogg tremolo 10 100 chorus 0.4 0.9 50 0.5 0.25 2 -t 40 0.6 0.2 3 -s 60 0.6 0.3 1.3 -t &)
echo -e "Start Up Script finishes \a"

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
