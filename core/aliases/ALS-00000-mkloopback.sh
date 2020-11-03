function mkloopback() {
  (
    cd /home/luxcium/src/v4l2loopback &&
      sudo make clean &&
      git pull origin &&
      sudo make &&
      sudo make install &&
      sudo depmod -a -v &&
      sudo modprobe -v v4l2loopback &&
      cd /sys/devices/virtual/video4linux/ ||
      ( (sudo wall "ERROR IN MAKE LOOPBACK") && exit 1)
  )
}
