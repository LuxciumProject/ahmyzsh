alias obsp="(cd /home/luxcium/obs-studio-portable/bin/64bit && /home/luxcium/obs-studio-portable/bin/64bit/obs)"
alias runobs="(cd /home/luxcium/obs-studio-portable/bin/64bit && sudo ionice -c 1 -n 0 nice -n -35 sudo -u luxcium /home/luxcium/obs-studio-portable/bin/64bit/obs)"
alias reloadobs="(sudo killall obs; runobs)"

alias getphotosx="(cambat && mkdir ${HOME}/myPic -p && cd ${HOME}/myPic && sudo ionice -c 2 -n 4 nice -n -35  gphoto2 --get-all-files --skip-existing&& lf&)"
alias getphotos="(cambat && mkdir ${HOME}/myPic -p && cd ${HOME}/myPic && sudo ionice -c 2 -n 4 nice -n -35  gphoto2 --get-all-files --new --skip-existing&& lf&)"
alias cambatF="(echo -ne '\n\n' && cambat && echo -ne '\n\n' )"
alias inice0="sudo ionice -c 1 -n 0 nice -n -35"
alias inice1="sudo ionice -c 1 -n 1 nice -n -35"
# // -probesize 32 -analyzeduration 0
# // gphoto2 --stdout --capture-movie | ffmpeg  -hwaccel nvdec -c:v mjpeg_cuvid -i - -vcodec rawvideo -filter atadenoise -pix_fmt yuv420p -force_key_frames 00:00:00.000 -c:a copy -f v4l2 /dev/video0 -init_hw_device cuda:1
# // gphoto2 --stdout --capture-movie |
alias fpeg="( inice1 \
    ffmpeg -hide_banner \
    -init_hw_device cuda:0 \
    -hwaccel nvdec \
    -c:v mjpeg_cuvid \
    -i - \
    -init_hw_device cuda:0 \
    -vcodec rawvideo  \
    -filter atadenoise \
    -pix_fmt yuv420p \
    -c:a copy \
    -flush_packets 1 \
    -f v4l2 /dev/video0 \
)"

# alias fpeg="(inice1 ffmpeg -init_hw_device cuda:0 -hwaccel nvdec -c:v mjpeg_cuvid -i - -vcodec rawvideo -filter atadenoise -pix_fmt yuv420p -r 25 -f v4l2 /dev/video0)"
# alias fpeg="(inice1 ffmpeg -hide_banner -init_hw_device cuda:0 -hwaccel nvdec -c:v mjpeg_cuvid -i - -init_hw_device cuda:0 -vcodec rawvideo -filter atadenoise -pix_fmt yuv420p -r 25 -f v4l2 /dev/video0)"
alias gphotoload="(cambatF && inice0 gphoto2 --stdout --capture-movie | fpeg)"
alias gphotoloadx="(sudo killall gphoto2& sudo killall ffmpeg&) 2>/dev/null; (mkloopback && gphotoload)"
alias gphotoreload=gphotoloadx
alias reconcam="(sudo killall gphoto2& sudo killall ffmpeg&) 2>/dev/null; (mkloopback &)"
alias loadgphoto=gphotoload
alias reloadgphoto=gphotoreload

alias photoload=gphotoload
alias photoreload=gphotoreload
alias photoloadx=gphotoreload

alias camget=getphotos

alias camload=gphotoload
alias camreload=gphotoreload
alias camloadx=gphotoreload

alias captureimage="gphoto2 --keep-raw --capture-image-and-download --stdout > $(getstamp8)-$(getstampdtyy).jpg"
alias takephoto=captureimage
function cambat() {
    VACUOUS=$(gphoto2 --get-config='/main/status/Niveau de batterie' 2>/dev/null | grep '100') >/dev/null
    if [[ $? == 0 ]]; then
        (echo -e "   ${LIGHT_2}${RSET} $(gphoto2 --get-config='/main/status/Niveau de batterie' 2>/dev/null | grep '100') ${RSET}" &)
        (playpositive)
        return 0
    fi

    VACUOUS=$(gphoto2 --get-config='/main/status/Niveau de batterie' 2>/dev/null | grep '75') >/dev/null
    if [[ $? == 0 ]]; then
        (echo -e "   ${LIGHT_1}${RSET} $(gphoto2 --get-config='/main/status/Niveau de batterie' 2>/dev/null | grep '75') ${RSET}" &)
        (playwarning)
        return 0
    fi

    VACUOUS=$(gphoto2 --get-config='/main/status/Niveau de batterie' 2>/dev/null | grep '50') >/dev/null
    if [[ $? == 0 ]]; then
        (echo -e "   ${LIGHT_1_}${RSET} $(gphoto2 --get-config='/main/status/Niveau de batterie' 2>/dev/null | grep '50') ${RSET}" &)
        (playwarning)
        return 0
    fi

    VACUOUS=$(gphoto2 --get-config='/main/status/Niveau de batterie' 2>/dev/null | grep '25') >/dev/null
    if [[ $? == 0 ]]; then
        (echo -e "   ${LIGHT_0}${RSET} $(gphoto2 --get-config='/main/status/Niveau de batterie' 2>/dev/null | grep '25') ${RSET}" &)
        (playnegative)
        return 0
    fi

    (playcritical)
    echo -e "${LIGHT_0_} ${LIGHT_0_} ${LIGHT_0_}"
    (echo $(gphoto2 --get-config='/main/status/Niveau de batterie' | grep 'Current'))
    echo -ne "${RSET} "
    VACUOUS=$(gphoto2 --get-config='/main/status/Niveau de batterie' 2>/dev/null) >/dev/null
    return

}

# "(cd /usr/src/v4l2loopback &&\
#   make clean &&\
#   git pull origin &&\
#   sudo make &&\
#   sudo make install &&\
#   sudo depmod -a -v &&\
#   sudo modprobe -v v4l2loopback &&\
#   cd /sys/devices/virtual/video4linux/ &&\
# sudo wall -n \$(gphoto2 --abilities) ) || echo ERROR"

# alias gphotoload="(gphoto2 --stdout --capture-movie | ffmpeg -hwaccel nvdec -c:v mjpeg_cuvid -i - -vcodec rawvideo -pix_fmt yuv420p -threads 20 -r 32 -f v4l2 /dev/video0)"

# gphoto2 --stdout --capture-movie | ffmpeg -hwaccel nvdec -c:v mjpeg_cuvid -i - -vcodec rawvideo -filter atadenoise -pix_fmt yuv420p -r 25 -f v4l2 /dev/video0
# dvvideo

# ffmpeg -y -f rawvideo -video_size 320x240 -framerate 25 -pixel_format yuv420p -i - -f s16le -sample_rate 44100 -channels 2 -i audio.pcm -shortest output.mp4
