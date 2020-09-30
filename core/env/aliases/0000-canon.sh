alias mkloopback="(cd /home/luxcium/src/v4l2loopback &&\
 make clean &&\
 git pull origin &&\
  sudo make &&\
  sudo make install &&\
  sudo depmod -a -v &&\
  sudo modprobe -v v4l2loopback &&\
  cd /sys/devices/virtual/video4linux/ &&\
   sudo wall -n \$(gphoto2 --abilities) ) || echo ERROR"
alias gphotoreload="sudo killall gphoto2 &&\
(mkloopback &&\
 gphoto2 --stdout --capture-movie |\
  ffmpeg -hwaccel nvdec -c:v mjpeg_cuvid -i -\
 -vcodec rawvideo -pix_fmt yuv420p -threads 20 -r 35 -f v4l2\
   /dev/video0)&"
alias gphotoload="(gphoto2 --stdout --capture-movie | ffmpeg -hwaccel nvdec -c:v mjpeg_cuvid -i - -vcodec rawvideo -pix_fmt yuv420p -threads 20 -r 35 -f v4l2 /dev/video0)&"
