YES=1
NO=0
DEFAULT=128
AUTO=3
#& SATURATION=128 min=0 max=255 step=1
SATURATION=80

#& BRIGHTNESS=128 min=0 max=255 step=1
BRIGHTNESS=$DEFAULT

#& CONTRAST=128 min=0 max=255 step=1
CONTRAST=$DEFAULT

#& SHARPNESS=128 min=2000 max=7500 step=10
SHARPNESS=100

#& GAIN=0 min=0 max=255 step=1
GAIN=$DEFAULT

#& POWER_LINE_FREQUENCY=2 min=0 max=2
POWER_LINE_FREQUENCY=1

#& BACKLIGHT_COMPENSATION=1 min=0 max=1 step=1
BACKLIGHT_COMPENSATION=$YES

#& ZOOM_ABSOLUTE=100 min=100 max=500 step=1
ZOOM_ABSOLUTE=$NO

#& EXPOSURE_AUTO=3 min=0 max=3 default=3
EXPOSURE_AUTO=$AUTO

#& EXPOSURE_AUTO_PRIORITY=0 default=0 value=1
EXPOSURE_AUTO_PRIORITY=$YES

#& FOCUS_AUTO=1 default=1 value=1
FOCUS_AUTO=$YES

#& WHITE_BALANCE_TEMPERATURE_AUTO=1
WHITE_BALANCE_TEMPERATURE_AUTO=$YES

#+ (int)    : min=0 max=255 step=1 default=128 value=128
# #[?] brightness: brightness: 128
v4l2-ctl --set-ctrl=brightness="$BRIGHTNESS"
echo -n '[?] '
v4l2-ctl --get-ctrl=brightness

#+ (int)    : min=0 max=255 step=1 default=128 value=128
# #[?] contrast: contrast: 128
v4l2-ctl --set-ctrl=contrast="$CONTRAST"
echo -n '[?] '
v4l2-ctl --get-ctrl=contrast

#+ (int)    : min=0 max=255 step=1 default=128 value=128
# #[?] saturation: saturation: 128
v4l2-ctl --set-ctrl=saturation="$SATURATION"
echo -n '[?] '
v4l2-ctl --get-ctrl=saturation

#+ (int)    : min=0 max=255 step=1 default=0 value=0
# #[?] gain: gain: 0
v4l2-ctl --set-ctrl=gain="$GAIN"
echo -n '[?] '
v4l2-ctl --get-ctrl=gain

#+ (menu)   : min=0 max=2 default=2 value=2
# #[?] power_line_frequency: power_line_frequency: 2
v4l2-ctl --set-ctrl=power_line_frequency="$POWER_LINE_FREQUENCY"
echo -n '[?] '
v4l2-ctl --get-ctrl=power_line_frequency

#+ (int)    : min=0 max=255 step=1 default=128 value=128
# #[?] sharpness: sharpness: 128
v4l2-ctl --set-ctrl=sharpness="$SHARPNESS"
echo -n '[?] '
v4l2-ctl --get-ctrl=sharpness

#+ (int)    : min=0 max=1 step=1 default=1 value=1
# #[?] backlight_compensation: backlight_compensation: 1
v4l2-ctl --set-ctrl=backlight_compensation="$BACKLIGHT_COMPENSATION"
echo -n '[?] '
v4l2-ctl --get-ctrl=backlight_compensation

#+ (bool)   : default=0 value=1
# #[?] exposure_auto_priority: exposure_auto_priority: 1
v4l2-ctl --set-ctrl=exposure_auto_priority="$EXPOSURE_AUTO_PRIORITY"
echo -n '[?] '
v4l2-ctl --get-ctrl=exposure_auto_priority

#+ (int)    : min=-36000 max=36000 step=3600 default=0 value=0
# #[?] pan_absolute: pan_absolute: 0
v4l2-ctl --set-ctrl=pan_absolute=36000
echo -n '[?] '
v4l2-ctl --get-ctrl=pan_absolute

#+ (int)    : min=-36000 max=36000 step=3600 default=0 value=0
# #[?] tilt_absolute: tilt_absolute: 0
v4l2-ctl --set-ctrl=tilt_absolute=36000
echo -n '[?] '
v4l2-ctl --get-ctrl=tilt_absolute

#+ (int)    : min=100 max=500 step=1 default=100 value=100
# #[?] zoom_absolute: zoom_absolute: 100
v4l2-ctl --set-ctrl=zoom_absolute="$ZOOM_ABSOLUTE"
echo -n '[?] '
v4l2-ctl --get-ctrl=zoom_absolute

#+ (int)    : min=3 max=2047 step=1 default=250 value=312 flags=inactive
# #[?] exposure_absolute: exposure_absolute: 250
# !! v4l2-ctl --set-ctrl=exposure_absolute=250
echo '[?] exposure_absolute: flags=inactive'
# v4l2-ctl --get-ctrl=exposure_absolute

#+ (menu)   : min=0 max=3 default=3 value=3
# #[?] exposure_auto: exposure_auto: 3
# v4l2-ctl --set-ctrl=exposure_auto="$EXPOSURE_AUTO"
echo -n '[?] '
v4l2-ctl --get-ctrl=exposure_auto

#+ (int)    : min=0 max=255 step=5 default=0 value=0 flags=inactive
# #[?] focus_absolute: focus_absolute: 0
# !! v4l2-ctl --set-ctrl=focus_absolute=0
echo '[?] focus_absolute: flags=inactive'
# v4l2-ctl --get-ctrl=focus_absolute

#+ (bool)   : default=1 value=1
# #[?] focus_auto: focus_auto: 1
v4l2-ctl --set-ctrl=focus_auto="$FOCUS_AUTO"
echo -n '[?] '
v4l2-ctl --get-ctrl=focus_auto

#+ (int)    : min=2000 max=7500 step=10 default=4000 value=6500 flags=inactive
# #[?] white_balance_temperature: white_balance_temperature: 6500
# !! v4l2-ctl --set-ctrl=white_balance_temperature=6500
echo '[?] white_balance_temperature: flags=inactive'
# v4l2-ctl --get-ctrl=white_balance_temperature

#+ (bool)   : default=1 value=1
# #[?] white_balance_temperature_auto: white_balance_temperature_auto: 1
v4l2-ctl --set-ctrl=white_balance_temperature_auto="$WHITE_BALANCE_TEMPERATURE_AUTO"
echo -n '[?] '
v4l2-ctl --get-ctrl=white_balance_temperature_auto

# Logitech BRIO (usb-0000:00:14.0-5.1):
#         /dev/video0
#         /dev/video1
#         /dev/video2
#         /dev/video3

function brio-settings() {
  echo -en "    0x00980900 (int)    : min=0 max=255 step=1 default=128 value=128 \n    [!] v4l2-ctl --set-ctrl=brightness=128\n\n"
  echo -en "    0x00980901 (int)    : min=0 max=255 step=1 default=128 value=128 \n    [!] v4l2-ctl --set-ctrl=contrast=128\n\n"
  echo -en "    0x00980902 (int)    : min=0 max=255 step=1 default=128 value=128 \n    [!] v4l2-ctl --set-ctrl=saturation=128\n\n"
  echo -en "    0x0098090c (bool)   : default=1 value=1 \n    [!] v4l2-ctl --set-ctrl=white_balance_temperature_auto=1\n\n"
  echo -en "    0x00980913 (int)    : min=0 max=255 step=1 default=0 value=0 \n    [!] v4l2-ctl --set-ctrl=gain=0\n\n"
  echo -en "    0x00980918 (menu)   : min=0 max=2 default=2 value=2 \n    [!] v4l2-ctl --set-ctrl=power_line_frequency=2\n\n"
  echo -en "    0x0098091a (int)    : min=2000 max=7500 step=10 default=4000 value=6500 flags=inactive \n    [!] v4l2-ctl --set-ctrl=white_balance_temperature=4000\n\n"
  echo -en "    0x0098091b (int)    : min=0 max=255 step=1 default=128 value=128 \n    [!] v4l2-ctl --set-ctrl=sharpness=128\n\n"
  echo -en "    0x0098091c (int)    : min=0 max=1 step=1 default=1 value=1 \n    [!] v4l2-ctl --set-ctrl=backlight_compensation=1\n\n"
  echo -en "    0x009a0901 (menu)   : min=0 max=3 default=3 value=3 \n    [!] v4l2-ctl --set-ctrl=exposure_auto=3\n\n"
  echo -en "    0x009a0902 (int)    : min=3 max=2047 step=1 default=250 value=312 flags=inactive \n    [!] v4l2-ctl --set-ctrl=exposure_absolute=250\n\n"
  echo -en "    0x009a0903 (bool)   : default=0 value=1 \n    [!] v4l2-ctl --set-ctrl=exposure_auto_priority=0\n\n"
  echo -en "    0x009a0908 (int)    : min=-36000 max=36000 step=3600 default=0 value=0 \n    [!] v4l2-ctl --set-ctrl=pan_absolute=0\n\n"
  echo -en "    0x009a0909 (int)    : min=-36000 max=36000 step=3600 default=0 value=0 \n    [!] v4l2-ctl --set-ctrl=tilt_absolute=0\n\n"
  echo -en "    0x009a090a (int)    : min=0 max=255 step=5 default=0 value=0 flags=inactive \n    [!] v4l2-ctl --set-ctrl=focus_absolute=0\n\n"
  echo -en "    0x009a090c (bool)   : default=1 value=1 \n    [!] v4l2-ctl --set-ctrl=focus_auto=1\n\n"
  echo -en "    0x009a090d (int)    : min=100 max=500 step=1 default=100 value=100 \n    [!] v4l2-ctl --set-ctrl=zoom_absolute100\n\n"
  v4l2-ctl --list-devices
}
