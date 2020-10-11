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
function cambat() {
    VACUOUS=$(gphoto2 --get-config='/main/status/Niveau de batterie' 2>/dev/null | grep '100') >/dev/null
    if [[ $? == 0 ]]; then
        (echo -e "     ${LIGHT_2}${RSET} $(gphoto2 --get-config='/main/status/Niveau de batterie' 2>/dev/null | grep '100') ${RSET}" &)
        (playpositive)
        return 0
    fi

    VACUOUS=$(gphoto2 --get-config='/main/status/Niveau de batterie' 2>/dev/null | grep '50') >/dev/null
    if [[ $? == 0 ]]; then
        (echo -e "     ${LIGHT_1}${RSET} $(gphoto2 --get-config='/main/status/Niveau de batterie' 2>/dev/null | grep '50') ${RSET}" &)
        (playwarning)
        return 0
    fi

    VACUOUS=$(gphoto2 --get-config='/main/status/Niveau de batterie' 2>/dev/null | grep '25') >/dev/null
    if [[ $? == 0 ]]; then
        (echo -e "     ${LIGHT_0}${RSET} $(gphoto2 --get-config='/main/status/Niveau de batterie' 2>/dev/null | grep '25')  ${RSET}" &)
        (playnegative)
        return 0
    fi

    echo -e "${LIGHT_0_} ${LIGHT_0_} ${LIGHT_0_}"
    (echo $(gphoto2 --get-config='/main/status/Niveau de batterie' | grep 'Current'))
    echo -ne "${RSET} "
    (playcritical)
    return 1

}

alias runobs="(cd /home/luxcium/obs-studio-portable/bin/64bit && sudo nice -n -35 sudo ionice -c 1 -n 0 sudo -u luxcium /home/luxcium/obs-studio-portable/bin/64bit/obs)"
alias reloadobs="(sudo killall obs; runobs)"

alias getphotos="(cambat && mkdir ${HOME}/myPic -p && cd ${HOME}/myPic && sudo nice -n -35 ionice -c 1 -n 0 gphoto2 --get-all-files --skip-existing&& lf&)"

alias gphotoload="(echo -ne '\n\n' && cambat && echo -ne '\n\n' && sudo nice -n -35 ionice -c 1 -n 0  gphoto2 --stdout --capture-movie | sudo nice -n -35 ionice -c 1 -n 0  ffmpeg -hwaccel nvdec -c:v mjpeg_cuvid -i - -vcodec rawvideo -filter atadenoise -pix_fmt yuv420p -r 25 -f v4l2 /dev/video0)"
alias gphotoreload="(sudo killall gphoto2& sudo killall ffmpeg&) 2>/dev/null; (mkloopback && gphotoload)"
alias gphotoloadx=gphotoreload

alias photoload=gphotoload
alias photoreload=gphotoreload
alias photoloadx=gphotoreload

alias camload=gphotoload
alias camreload=gphotoreload
alias camloadx=gphotoreload

# "(cd /home/luxcium/src/v4l2loopback &&\
#     make clean &&\
#     git pull origin &&\
#     sudo make &&\
#     sudo make install &&\
#     sudo depmod -a -v &&\
#     sudo modprobe -v v4l2loopback &&\
#     cd /sys/devices/virtual/video4linux/ &&\
# sudo wall -n \$(gphoto2 --abilities) ) || echo ERROR"

# alias gphotoload="(gphoto2 --stdout --capture-movie | ffmpeg -hwaccel nvdec -c:v mjpeg_cuvid -i  - -vcodec rawvideo -pix_fmt yuv420p -threads 20 -r 32 -f v4l2 /dev/video0)"

# gphoto2 --stdout --capture-movie | ffmpeg -hwaccel nvdec -c:v mjpeg_cuvid -i -  -vcodec rawvideo  -filter atadenoise -pix_fmt yuv420p -r 25 -f v4l2 /dev/video0
# dvvideo

# ffmpeg -y -f rawvideo -video_size 320x240 -framerate 25 -pixel_format yuv420p -i - -f s16le -sample_rate 44100 -channels 2 -i audio.pcm -shortest output.mp4
