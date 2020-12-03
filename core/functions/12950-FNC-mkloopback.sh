function mkloopback() {
  (
    cd /usr/src/v4l2loopback \
      && sudo make clean \
      && sudo git pull origin \
      && sudo make \
      && sudo make install \
      && sudo depmod -a -v \
      && sudo modprobe -v v4l2loopback \
      && cd /sys/devices/virtual/video4linux/ \
      || ( (sudo wall "ERROR IN MAKE LOOPBACK") && exit 1)
  ) && ( (sudo wall "Video loop back in /sys/devices/virtual/video4linux/$(ls /sys/devices/virtual/video4linux)/ ") && exit 0)
}
