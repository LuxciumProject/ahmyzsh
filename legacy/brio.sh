#!/bin/bash

# v4l2-ctl --get-ctrl=white_balance_temperature
# white_balance_temperature: 4600
# //  > v4l2-ctl -d /dev/video0 --list-ctrls
# Terminé !
# ❯ v4l2-ctl --list-devices
# Logitech BRIO (usb-0000:00:14.0-5.1):
#         /dev/video0
#         /dev/video1
#         /dev/video2
#         /dev/video3
function brio-settings() {
  echo -n '[!] brightness: '
  v4l2-ctl --g-et-ctrl=brightness
  echo -en "    0x00980900 (int)    : min=0 max=255 step=1 default=128 value=128 \n    v4l2-ctl --set-ctrl=brightness=128\n\n"
  echo -n '[!] contrast: '
  v4l2-ctl --g-et-ctrl=contrast
  echo -en "    0x00980901 (int)    : min=0 max=255 step=1 default=128 value=128 \n    v4l2-ctl --set-ctrl=contrast=128\n\n"
  echo -n '[!] saturation: '
  v4l2-ctl --g-et-ctrl=saturation
  echo -en "    0x00980902 (int)    : min=0 max=255 step=1 default=128 value=128 \n    v4l2-ctl --set-ctrl=saturation=128\n\n"
  echo -n '[!] white_balance_temperature_auto: '
  v4l2-ctl --g-et-ctrl=white_balance_temperature_auto
  echo -en "    0x0098090c (bool)   : default=1 value=1 \n    v4l2-ctl --set-ctrl=white_balance_temperature_auto=1\n\n"
  echo -n '[!] gain: '
  v4l2-ctl --g-et-ctrl=gain
  echo -en "    0x00980913 (int)    : min=0 max=255 step=1 default=0 value=0 \n    v4l2-ctl --set-ctrl=gain=0\n\n"
  echo -n '[!] power_line_frequency: '
  v4l2-ctl --g-et-ctrl=power_line_frequency
  echo -en "    0x00980918 (menu)   : min=0 max=2 default=2 value=2 \n    v4l2-ctl --set-ctrl=power_line_frequency=2\n\n"
  echo -n '[!] white_balance_temperature: '
  v4l2-ctl --g-et-ctrl=white_balance_temperature
  echo -en "    0x0098091a (int)    : min=2000 max=7500 step=10 default=4000 value=6500 flags=inactive \n    v4l2-ctl --set-ctrl=white_balance_temperature=4000\n\n"
  echo -n '[!] sharpness: '
  v4l2-ctl --g-et-ctrl=sharpness
  echo -en "    0x0098091b (int)    : min=0 max=255 step=1 default=128 value=128 \n    v4l2-ctl --set-ctrl=sharpness=128\n\n"
  echo -n '[!] backlight_compensation: '
  v4l2-ctl --g-et-ctrl=backlight_compensation
  echo -en "    0x0098091c (int)    : min=0 max=1 step=1 default=1 value=1 \n    v4l2-ctl --set-ctrl=backlight_compensation=1\n\n"
  echo -n '[!] exposure_auto: '
  v4l2-ctl --g-et-ctrl=exposure_auto
  echo -en "    0x009a0901 (menu)   : min=0 max=3 default=3 value=3 \n    v4l2-ctl --set-ctrl=exposure_auto=3\n\n"
  echo -n '[!] exposure_absolute: '
  v4l2-ctl --g-et-ctrl=exposure_absolute
  echo -en "    0x009a0902 (int)    : min=3 max=2047 step=1 default=250 value=312 flags=inactive \n    v4l2-ctl --set-ctrl=exposure_absolute=250\n\n"
  echo -n '[!] exposure_auto_priority: '
  v4l2-ctl --g-et-ctrl=exposure_auto_priority
  echo -en "    0x009a0903 (bool)   : default=0 value=1 \n    v4l2-ctl --set-ctrl=exposure_auto_priority=0\n\n"
  echo -n '[!] pan_absolute: '
  v4l2-ctl --g-et-ctrl=pan_absolute
  echo -en "    0x009a0908 (int)    : min=-36000 max=36000 step=3600 default=0 value=0 \n    v4l2-ctl --set-ctrl=pan_absolute=0\n\n"
  echo -n '[!] tilt_absolute: '
  v4l2-ctl --g-et-ctrl=tilt_absolute
  echo -en "    0x009a0909 (int)    : min=-36000 max=36000 step=3600 default=0 value=0 \n    v4l2-ctl --set-ctrl=tilt_absolute=0\n\n"
  echo -n '[!] focus_absolute: '
  v4l2-ctl --g-et-ctrl=focus_absolute
  echo -en "    0x009a090a (int)    : min=0 max=255 step=5 default=0 value=0 flags=inactive \n    v4l2-ctl --set-ctrl=focus_absolute=0\n\n"
  echo -n '[!] focus_auto: '
  v4l2-ctl --g-et-ctrl=focus_auto
  echo -en "    0x009a090c (bool)   : default=1 value=1 \n    v4l2-ctl --set-ctrl=focus_auto=1\n\n"
  echo -n '[!] zoom_absolute: '
  v4l2-ctl --g-et-ctrl=zoom_absolute
  echo -en "    0x009a090d (int)    : min=100 max=500 step=1 default=100 value=100 \n    v4l2-ctl --get-ctrl=zoom_absolute100\n\n"
  v4l2-ctl --list-devices
}
#                      brightness 0x00980900 (int)    : min=0 max=255 step=1 default=128 value=128
#                        contrast 0x00980901 (int)    : min=0 max=255 step=1 default=128 value=128
#                      saturation 0x00980902 (int)    : min=0 max=255 step=1 default=128 value=128
#  white_balance_temperature_auto 0x0098090c (bool)   : default=1 value=1
#                            gain 0x00980913 (int)    : min=0 max=255 step=1 default=0 value=0
#            power_line_frequency 0x00980918 (menu)   : min=0 max=2 default=2 value=2
#       white_balance_temperature 0x0098091a (int)    : min=2000 max=7500 step=10 default=4000 value=6500 flags=inactive
#                       sharpness 0x0098091b (int)    : min=0 max=255 step=1 default=128 value=128
#          backlight_compensation 0x0098091c (int)    : min=0 max=1 step=1 default=1 value=1
#                   exposure_auto 0x009a0901 (menu)   : min=0 max=3 default=3 value=3
#               exposure_absolute 0x009a0902 (int)    : min=3 max=2047 step=1 default=250 value=312 flags=inactive
#          exposure_auto_priority 0x009a0903 (bool)   : default=0 value=1
#                    pan_absolute 0x009a0908 (int)    : min=-36000 max=36000 step=3600 default=0 value=0
#                   tilt_absolute 0x009a0909 (int)    : min=-36000 max=36000 step=3600 default=0 value=0
#                  focus_absolute 0x009a090a (int)    : min=0 max=255 step=5 default=0 value=0 flags=inactive
#                      focus_auto 0x009a090c (bool)   : default=1 value=1
#                   zoom_absolute 0x009a090d (int)    : min=100 max=500 step=1 default=100 value=100

# Reading current value
# Read current UVC value with command below. Actual value is reported back below.

# > v4l2-ctl --get-ctrl=white_balance_temperature
# white_balance_temperature: 4600
# Setting new value
# In order to set new camera parameter value use command syntax like this:

# > v4l2-ctl --set-ctrl=gain=00
# > v4l2-ctl --set-ctrl=exposure_auto=1
# > v4l2-ctl --set-ctrl=exposure_absolute=10
# In some cases it is necessary to switch parameters in certain order for parameter to be set. For example change manual white balance control before setting fixed value:

# > v4l2-ctl --set-ctrl=white_balance_temperature_auto=1
# > v4l2-ctl --set-ctrl=white_balance_temperature=6000
# VIDIOC_S_CTRL: failed: Input/output error
# white_balance_temperature: Input/output error

# > v4l2-ctl --set-ctrl=white_balance_temperature_auto=0
# > v4l2-ctl --set-ctrl=white_balance_temperature=6000
