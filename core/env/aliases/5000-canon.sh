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
        ( (sudo wall "ERROR IN MAKE LOOPBACK") && exit 1 )
    )
}
function cambat(){
    #-- ${LIGHT_0_}
    #-- ${LIGHT_1_}
    #-- ${LIGHT_2_}
    #-- ${LIGHT_0}
    #-- ${LIGHT_1}
    #-- ${LIGHT_2}
    #-- ${RSET}\n\n

    base_layouts_icons


    VACUOUS=$(gphoto2 --get-config='/main/status/Niveau de batterie' 2>/dev/null |grep '100')>/dev/null
    if  [[ $? == 0 ]]; then
        echo -e "\n\n${LIGHT_2} ${RSET}\n\n"
        return 0
    fi

    VACUOUS=$(gphoto2 --get-config='/main/status/Niveau de batterie' 2>/dev/null |grep '50')>/dev/null
    if  [[ $? == 0 ]]; then
        echo -e "\n\n${LIGHT_2} ${RSET}\n\n"
        echo -e "\n\n ${LBOLD}${FGR_}    ${LIGHTBULB_ON} ${LBOLD}${FYL_}${LIGHTBULB_ON} ${LBOLD}${FRD_}${LIGHTBULB} \n    ${RSET}\n\n" &&

        return 0
    fi



    VACUOUS=$(gphoto2 --get-config='/main/status/Niveau de batterie' 2>/dev/null |grep '25')>/dev/null
    if  [[ $? == 0 ]]; then
        echo -e "\n\n${LIGHT_0} ${RSET}\n\n"

        return 0
    fi

    echo -e "\n\n${LIGHT_0_} hey ${RSET}\n\n"

    playnegative
    return 1




}

alias pbat=cambat
alias gphotoload="(pbat &&  gphoto2 --stdout --capture-movie | ffmpeg -hwaccel nvdec -c:v mjpeg_cuvid -i - -vcodec rawvideo -filter atadenoise -pix_fmt yuv420p -r 25 -f v4l2 /dev/video0)"
alias gphotoreload="(sudo killall gphoto2) 2>/dev/null; (mkloopback && gphotoload)"
alias getphotos="( (mkdir ${HOME}/myPic -p; cd ${HOME}/myPic;  gphoto2 --get-all-files --skip-existing; lf&)& pbat)"

alias photoreload=gphotoreload
alias photoload=gphotoload

alias camloadx=gphotoreload
alias camload=gphotoload



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
