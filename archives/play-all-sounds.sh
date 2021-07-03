#! /bin/zsh

# TIMER_THEN_001=$(/usr/bin/date +%s%N)
# TIMER_NOW_002=$(/usr/bin/date +%s%N)
# TIMER_VALUE="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"

source /home/luxcium/ahmyzsh/core/aliases/12012-ALS-sounds.sh
touch sound-list.txt
echo -n '' >sound-list.txt
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_NTV_startup_C9_Long_version
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_NTV_startup_C9_Long_version ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_NTV_startup_C9_small_version
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_NTV_startup_C9_small_version ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_NTV_error_tv3
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_NTV_error_tv3 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_NTV_information_t5
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_NTV_information_t5 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_NTV_logout_a3
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_NTV_logout_a3 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_NTV_question_btv
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_NTV_question_btv ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_osx1_0008_buddy_online
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_osx1_0008_buddy_online ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_osx1_0009_start
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_osx1_0009_start ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_osx1_0010_device_ejected
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_osx1_0010_device_ejected ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_osx1_0011_device_detected
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_osx1_0011_device_detected ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_osx1_0012_critical_chronicles
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_osx1_0012_critical_chronicles ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_osx1_0013_clubbed_to_death
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_osx1_0013_clubbed_to_death ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_osx1_0014_attention
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_osx1_0014_attention ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_osx2_0006_parting_is_such_sweet_sorrow
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_osx2_0006_parting_is_such_sweet_sorrow ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_osx2_0002_assend_attention
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_osx2_0002_assend_attention ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_osx2_0004_hey_there
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_osx2_0004_hey_there ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_osx2_0001_cute
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_osx2_0001_cute ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_osx2_0003_trash1
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_osx2_0003_trash1 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_osx2_0005_old_school2
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_osx2_0005_old_school2 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_osx2_0007_old_school1
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_osx2_0007_old_school1 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_check-click
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_check-click ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_etc-dialog
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_etc-dialog ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_menu-select-b
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_menu-select-b ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_menu-select-a
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_menu-select-a ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_warning-dialog
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_warning-dialog ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_ask-dialog
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_ask-dialog ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_error-dialog
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_error-dialog ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_information-dialog
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_information-dialog ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_login-a
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_login-a ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_logout-a
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_logout-a ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_message-new-email
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_message-new-email ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play1_audio-volume-change
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play1_audio-volume-change ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play2_battery-low
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play2_battery-low ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play1_bell
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play1_bell ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play1_button-pressed
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play1_button-pressed ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_button-released
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_button-released ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play1_button-toggle-off
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play1_button-toggle-off ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play1_button-toggle-on
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play1_button-toggle-on ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_complete1
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_complete1 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_count-down1
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_count-down1 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play1_desktop-login
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play1_desktop-login ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_desktop-switch-left
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_desktop-switch-left ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_desktop-switch-right
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_desktop-switch-right ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_device-added
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_device-added ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_device-removed
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_device-removed ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play1_dialog-error
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play1_dialog-error ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play1_dialog-information
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play1_dialog-information ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play1_dialog-question
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play1_dialog-question ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play1_dialog-warning
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play1_dialog-warning ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    playnegative
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} playnegative ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    playpositive
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} playpositive ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    playwarning
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} playwarning ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    playcritical
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} playcritical ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play1_link-pressed
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play1_link-pressed ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_menu-popdown
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_menu-popdown ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play1_menu-popup
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play1_menu-popup ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_menu-replace
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_menu-replace ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play1_message-new-instant
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play1_message-new-instant ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_message-sent-instant
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_message-sent-instant ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play1_notebook-tab-changed
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play1_notebook-tab-changed ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play1_phone-incoming-call
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play1_phone-incoming-call ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play1_phone-outgoing-calling
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play1_phone-outgoing-calling ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play1_phone-outgoing-busy
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play1_phone-outgoing-busy ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play1_system-ready
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play1_system-ready ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play1_trash-empty
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play1_trash-empty ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play1_window-attention-active
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play1_window-attention-active ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play1_window-attention-inactive
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play1_window-attention-inactive ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play1_window-close
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play1_window-close ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play1_window-maximized
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play1_window-maximized ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play1_window-minimized
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play1_window-minimized ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play1_window-slide
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play1_window-slide ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play1_window-switch
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play1_window-switch ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play1_window-unmaximized
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play1_window-unmaximized ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_window-unminimized
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_window-unminimized ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_kdemod-error
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_kdemod-error ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_kdemod-general-system-message
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_kdemod-general-system-message ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_kdemod-im-buddy-offline
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_kdemod-im-buddy-offline ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_kdemod-im-buddy-online
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_kdemod-im-buddy-online ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_kdemod-im-message-received
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_kdemod-im-message-received ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_kdemod-im-message-sent
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_kdemod-im-message-sent ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_kdemod-login-tune-long-version
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_kdemod-login-tune-long-version ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_kdemod-login-tune-short-version
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_kdemod-login-tune-short-version ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_kdemod-logoff-tune
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_kdemod-logoff-tune ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_kdemod-new-e-maill
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_kdemod-new-e-maill ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_kdemod-question
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_kdemod-question ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play1_battery-low
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play1_battery-low ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play2_bell
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play2_bell ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_camera-shutter
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_camera-shutter ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_complete2
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_complete2 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_desktop-screen-lock
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_desktop-screen-lock ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_desktop-screen-unlock
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_desktop-screen-unlock ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play2_dialog-error
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play2_dialog-error ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play2_dialog-information
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play2_dialog-information ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
# (
#   sleep 0.07
#   (
#     TIMER_THEN_001=$(/usr/bin/date +%s%N)
#     play4_dialog-question
#     TIMER_NOW_002=$(/usr/bin/date +%s%N)
#     TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
#     echo "${TOTAL_TIME} play4_dialog-question ${TOTAL_TIME}" >>sound-list.txt
#   ) &
# )
# (
#   sleep 0.07
#   (
#     TIMER_THEN_001=$(/usr/bin/date +%s%N)
#     play2_dialog-warning
#     TIMER_NOW_002=$(/usr/bin/date +%s%N)
#     TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
#     echo "${TOTAL_TIME} play2_dialog-warning ${TOTAL_TIME}" >>sound-list.txt
#   ) &
# )
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play1_power-plug
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play1_power-plug ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play1_power-unplug
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play1_power-unplug ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_screen-capture
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_screen-capture ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play2_system-ready
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play2_system-ready ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play2_trash-empty
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play2_trash-empty ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Im-Cant-Connect
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Im-Cant-Connect ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Im-Connection-Lost
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Im-Connection-Lost ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Im-Contact-In
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Im-Contact-In ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Im-Contact-Out
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Im-Contact-Out ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Im-Error-On-Connection
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Im-Error-On-Connection ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Im-Highlight-Msg
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Im-Highlight-Msg ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Im-Internal-Error
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Im-Internal-Error ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Im-Irc-Event
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Im-Irc-Event ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Im-Low-Priority-Message
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Im-Low-Priority-Message ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Im-Message-In
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Im-Message-In ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Im-Message-Out
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Im-Message-Out ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Im-Network-Problems
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Im-Network-Problems ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Im-New-Mail
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Im-New-Mail ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Im-Nudge
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Im-Nudge ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Im-Phone-Ring
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Im-Phone-Ring ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Im-Sms
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Im-Sms ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Im-User-Auth
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Im-User-Auth ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_K3B-Finish-Error
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_K3B-Finish-Error ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_K3B-Finish-Success
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_K3B-Finish-Success ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_K3B-Insert-Medium
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_K3B-Insert-Medium ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Sys-App-Error
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Sys-App-Error ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Sys-App-Error-Critical
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Sys-App-Error-Critical ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Sys-App-Error-Serious
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Sys-App-Error-Serious ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Sys-App-Error-Serious-Very
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Sys-App-Error-Serious-Very ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Sys-App-Message
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Sys-App-Message ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Sys-App-Negative
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Sys-App-Negative ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Sys-App-Positive
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Sys-App-Positive ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Sys-Error-Printing
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Sys-Error-Printing ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Sys-File-Open-Foes
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Sys-File-Open-Foes ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Sys-List-End
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Sys-List-End ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Sys-List-Match-Multiple
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Sys-List-Match-Multiple ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Sys-List-Match-No
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Sys-List-Match-No ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Sys-Log-In
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Sys-Log-In ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Sys-Log-In-Long
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Sys-Log-In-Long ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Sys-Log-In-Short
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Sys-Log-In-Short ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Sys-Log-Out
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Sys-Log-Out ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Sys-Question
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Sys-Question ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Sys-Special
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Sys-Special ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Sys-Trash-Emptied
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Sys-Trash-Emptied ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Sys-Warning
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Sys-Warning ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Window-All-Desktops
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Window-All-Desktops ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Window-All-Desktops-Not
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Window-All-Desktops-Not ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Window-Close
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Window-Close ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Window-Maximize
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Window-Maximize ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Window-Minimize
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Window-Minimize ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Window-Move
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Window-Move ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Window-Move-Stop
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Window-Move-Stop ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Window-Shade-Down
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Window-Shade-Down ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Window-Shade-Up
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Window-Shade-Up ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_001
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_001 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_010
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_010 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_011
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_011 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_012
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_012 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_013
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_013 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_014
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_014 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_015
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_015 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_016
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_016 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_017
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_017 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_018
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_018 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_019
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_019 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_002
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_002 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_0020
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_0020 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_0021
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_0021 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_0022
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_0022 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_0023
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_0023 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_003
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_003 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_04
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_04 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_05
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_05 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_06
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_06 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_07
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_07 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_08
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_08 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_09
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_09 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play5_ringtone-1
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play5_ringtone-1 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play5_ringtone-2
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play5_ringtone-2 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play5_ringtone-3
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play5_ringtone-3 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play5_ringtone-4
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play5_ringtone-4 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_audio-channel-front-center
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_audio-channel-front-center ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_audio-channel-front-left
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_audio-channel-front-left ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_audio-channel-front-right
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_audio-channel-front-right ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_audio-channel-rear-center
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_audio-channel-rear-center ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_audio-channel-rear-right
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_audio-channel-rear-right ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_audio-channel-rear-left
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_audio-channel-rear-left ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_audio-channel-side-right
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_audio-channel-side-right ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_audio-channel-side-left
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_audio-channel-side-left ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_desktop-login4
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_desktop-login4 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_desktop-login5
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_desktop-login5 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_message-new-email
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_message-new-email ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_window-unminimized
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_window-unminimized ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_audio-volume-change
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_audio-volume-change ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_battery-caution
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_battery-caution ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_battery-full
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_battery-full ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play3_battery-low
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play3_battery-low ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play2_button-pressed
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play2_button-pressed ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_button-released
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_button-released ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play2_button-toggle-off
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play2_button-toggle-off ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play2_button-toggle-on
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play2_button-toggle-on ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_count-down2
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_count-down2 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play2_desktop-login
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play2_desktop-login ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_desktop-logout
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_desktop-logout ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_desktop-switch-left
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_desktop-switch-left ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_desktop-switch-right
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_desktop-switch-right ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_device-added
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_device-added ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_device-removed
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_device-removed ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play3_dialog-error
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play3_dialog-error ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play3_dialog-information
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play3_dialog-information ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play2_dialog-question
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play2_dialog-question ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play3_dialog-warning
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play3_dialog-warning ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_link-pressed
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_link-pressed ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play1_menu-popdown
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play1_menu-popdown ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_menu-popup
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_menu-popup ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play1_menu-replace
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play1_menu-replace ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_message-new-email
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_message-new-email ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_message-new-instant
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_message-new-instant ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play1_message-sent-email
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play1_message-sent-email ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play1_message-sent-instant
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play1_message-sent-instant ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_network-connectivity-established
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_network-connectivity-established ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_network-connectivity-error
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_network-connectivity-error ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_network-connectivity-lost
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_network-connectivity-lost ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_notebook-tab-changed
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_notebook-tab-changed ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_phone-incoming-call
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_phone-incoming-call ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_phone-outgoing-busy
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_phone-outgoing-busy ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_phone-outgoing-calling
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_phone-outgoing-calling ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play2_power-plug
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play2_power-plug ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_power-unplug-battery-low
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_power-unplug-battery-low ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play2_power-unplug
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play2_power-unplug ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play3_system-ready
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play3_system-ready ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play3_trash-empty
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play3_trash-empty ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_window-attention-inactive
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_window-attention-inactive ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_window-attention-active
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_window-attention-active ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_window-close
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_window-close ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_window-maximized
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_window-maximized ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_window-minimized
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_window-minimized ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_window-new
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_window-new ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_window-slide
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_window-slide ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play2_window-switch
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play2_window-switch ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play2_window-unmaximized
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play2_window-unmaximized ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_action
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_action ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_bling
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_bling ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_click
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_click ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_com
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_com ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_crystal
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_crystal ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play1_maximize
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play1_maximize ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_minmize
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_minmize ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_newwindow
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_newwindow ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_newwindow2
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_newwindow2 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_ping
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_ping ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_ping2
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_ping2 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_snap
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_snap ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_thump
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_thump ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_trash
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_trash ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_zoom
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_zoom ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_osx1_transformers
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_osx1_transformers ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_windows7_button-pressed
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_windows7_button-pressed ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_windows7_button-toggle-off
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_windows7_button-toggle-off ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_windows7_button-toggle-on
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_windows7_button-toggle-on ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_windows7_desktop-login
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_windows7_desktop-login ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_windows7_desktop-logout
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_windows7_desktop-logout ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_windows7_dialog-error
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_windows7_dialog-error ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_windows7_dialog-information
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_windows7_dialog-information ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_windows7_dialog-question
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_windows7_dialog-question ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_windows7_dialog-question
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_windows7_dialog-question ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_windows7_dialog-warning
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_windows7_dialog-warning ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_windows7_phone-incoming-call
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_windows7_phone-incoming-call ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_windows7_system-ready
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_windows7_system-ready ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_windows7_window-slide
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_windows7_window-slide ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play3_power-plug
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play3_power-plug ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_power-plug
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_power-plug ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play3_power-unplug
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play3_power-unplug ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_power-unplug
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_power-unplug ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_zelda_email
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_zelda_email ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_zelda_buddylogin
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_zelda_buddylogin ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_zelda_bell
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_zelda_bell ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_zelda_buddylogout
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_zelda_buddylogout ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_zelda_button-pressed
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_zelda_button-pressed ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_zelda_button-toggle-off
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_zelda_button-toggle-off ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_zelda_button-toggle-on
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_zelda_button-toggle-on ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_zelda_emptytrash
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_zelda_emptytrash ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_zelda_imreceived
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_zelda_imreceived ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_zelda_imsent
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_zelda_imsent ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_zelda_maximize
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_zelda_maximize ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_zelda_unmaximize
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_zelda_unmaximize ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_zelda_minimize
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_zelda_minimize ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_zelda_lowbatt
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_zelda_lowbatt ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_zelda_dialog-error
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_zelda_dialog-error ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_zelda_dialog-information
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_zelda_dialog-information ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_zelda_dialog-warning
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_zelda_dialog-warning ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_zelda_desktop-login
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_zelda_desktop-login ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_zelda_desktop-logout
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_zelda_desktop-logout ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_zelda_longaction
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_zelda_longaction ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_zelda_dialog-question
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_zelda_dialog-question ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_bell_0017
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_bell_0017 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_button-toggle-off_0002
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_button-toggle-off_0002 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_button-toggle-on_0003
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_button-toggle-on_0003 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_button-pressed_0004
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_button-pressed_0004 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_desktop-login_0kinper_005
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_desktop-login_0kinper_005 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_desktop-logout_0006
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_desktop-logout_0006 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_dialog-error_0007
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_dialog-error_0007 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_dialog-information_0008
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_dialog-information_0008 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_dialog-question_0009
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_dialog-question_0009 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_dialog-warning_0010
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_dialog-warning_0010 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_message-new-instant_0011
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_message-new-instant_0011 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_phone-incoming-call_0012
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_phone-incoming-call_0012 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_phone-outgoing-busy_0013
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_phone-outgoing-busy_0013 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_service-login_0014
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_service-login_0014 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_service-logout_0015
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_service-logout_0015 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_system-ready_0016
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_system-ready_0016 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_window-slide_0001
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_window-slide_0001 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_loginfaileddexter_0018
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_loginfaileddexter_0018 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_loginscreenready2dexter_0019
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_loginscreenready2dexter_0019 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_loginscreenreadydexter_0020
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_loginscreenreadydexter_0020 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_loginsuccessdexter_0021
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_loginsuccessdexter_0021 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_logout_0022
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_logout_0022 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_startup_0023
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_startup_0023 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_do_this_again_0024
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_do_this_again_0024 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_errors_0025
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_errors_0025 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_hello_0026
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_hello_0026 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_I_dont_care_0027
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_I_dont_care_0027 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_impossible_0028
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_impossible_0028 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_its_you_0029
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_its_you_0029 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_like_cake_0030
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_like_cake_0030 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_long_time_0031
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_long_time_0031 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_stupid_0032
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_stupid_0032 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_your_fault_0033
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_your_fault_0033 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_itw_desktop_login_0034
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_itw_desktop_login_0034 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_itw_desktop_logout_0035
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_itw_desktop_logout_0035 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_itw_empty_trash_0036
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_itw_empty_trash_0036 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_itw_gdm_login_0037
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_itw_gdm_login_0037 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_itw_notification_0038
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_itw_notification_0038 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_drums_0039
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_drums_0039 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_empty_trash_0040
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_empty_trash_0040 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_glass_break_0041
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_glass_break_0041 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_gun_reloading_0042
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_gun_reloading_0042 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_gun_shot-01_0043
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_gun_shot-01_0043 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_gun_shot-02_0044
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_gun_shot-02_0044 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_phone_0045
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_phone_0045 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_sound_0046
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_sound_0046 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_turning_off_0047
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_turning_off_0047 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_kdestart_0048
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_kdestart_0048 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_kdestop_0049
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_kdestop_0049 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_error_kinper_0050
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_error_kinper_0050 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_LogOn_kinper_0051
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_LogOn_kinper_0051 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_LogOut_kinper_0052
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_LogOut_kinper_0052 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_message_kinper_0053
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_message_kinper_0053 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_question_kinper_0054
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_question_kinper_0054 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_usb_in_kinper_0055
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_usb_in_kinper_0055 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_usb_out_kinper_0056
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_usb_out_kinper_0056 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_warning_kinper_0057
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_warning_kinper_0057 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_kmess_chat_0058
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_kmess_chat_0058 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_kmess_logoff_0059
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_kmess_logoff_0059 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_kmess_logon_0060
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_kmess_logon_0060 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_kmess_msg_0061
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_kmess_msg_0061 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_megaman5_boss_intro_-_star_0062
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_megaman5_boss_intro_-_star_0062 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_megaman5_die_mm_close_0063
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_megaman5_die_mm_close_0063 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_01_konami_sequence_0064
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_01_konami_sequence_0064 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_0x0F_0065
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_0x0F_0065 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_0x10_0066
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_0x10_0066 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_0x15_0067
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_0x15_0067 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_0x16_0068
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_0x16_0068 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_0x20_0069
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_0x20_0069 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_0x2B_0070
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_0x2B_0070 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_0x3D_0071
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_0x3D_0071 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_0x54_0072
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_0x54_0072 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_0x5B_0073
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_0x5B_0073 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_0x61_0074
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_0x61_0074 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_0x66_0075
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_0x66_0075 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_0x6E_0076
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_0x6E_0076 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_0x7B_0077
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_0x7B_0077 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_0xB9_0078
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_0xB9_0078 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_gameover_0079
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_gameover_0079 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_metalgearcodec_0080
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_metalgearcodec_0080 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_e-mail_0081
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_e-mail_0081 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_error1_0082
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_error1_0082 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_error_0083
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_error_0083 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_system_down_0084
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_system_down_0084 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_system_start_0085
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_system_start_0085 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_30979-Start05_0086
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_30979-Start05_0086 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_secret-trophy_0087
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_secret-trophy_0087 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_SLAX_Startup_0088
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_SLAX_Startup_0088 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_action_0089
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_action_0089 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_bling_s-set_0090
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_bling_s-set_0090 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_click_s-set_0091
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_click_s-set_0091 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_com_s-set_0092
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_com_s-set_0092 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_crystal_s-set_0093
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_crystal_s-set_0093 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_maximize_s-set_0094
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_maximize_s-set_0094 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_minmize_s-set_0095
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_minmize_s-set_0095 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_newwindow2_s-set_0096
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_newwindow2_s-set_0096 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_newwindow_s-set_0097
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_newwindow_s-set_0097 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_ping2_s-set_0098
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_ping2_s-set_0098 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_ping_s-set_0099
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_ping_s-set_0099 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_snap_0100
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_snap_0100 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_thump_0101
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_thump_0101 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_trash_0102
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_trash_0102 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_zoom_0103
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_zoom_0103 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_audio-volume-change_0104
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_audio-volume-change_0104 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_battery-low_0105
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_battery-low_0105 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_bell_0106
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_bell_0106 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_complete_0107
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_complete_0107 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_desktop-login_0108
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_desktop-login_0108 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_device-added_0109
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_device-added_0109 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_device-removed_0110
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_device-removed_0110 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_dialog-error_0111
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_dialog-error_0111 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_dialog-question_0112
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_dialog-question_0112 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_dialog-warning_0113
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_dialog-warning_0113 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_message-new-email_0114
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_message-new-email_0114 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_message-new-instant_0115
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_message-new-instant_0115 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_trash-empty_0116
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_trash-empty_0116 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_bell_0117
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_bell_0117 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_button-pressed_0118
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_button-pressed_0118 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_button-toggle-off_0119
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_button-toggle-off_0119 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_button-toggle-on_0120
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_button-toggle-on_0120 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_desktop-login_0121
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_desktop-login_0121 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_desktop-logout_0122
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_desktop-logout_0122 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_dialog-error_0123
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_dialog-error_0123 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_dialog-information_0124
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_dialog-information_0124 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_dialog-question_0125
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_dialog-question_0125 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_dialog-question_0126
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_dialog-question_0126 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_dialog-warning_0127
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_dialog-warning_0127 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_phone-incoming-call_0128
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_phone-incoming-call_0128 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_system-ready_0129
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_system-ready_0129 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_window-slide_0130
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_window-slide_0130 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_ubuntu-alt-alert_0131
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_ubuntu-alt-alert_0131 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_ubuntu-alt-sd_0132
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_ubuntu-alt-sd_0132 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_ubuntu-alt_0133
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_ubuntu-alt_0133 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Alarm01_0134
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Alarm01_0134 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Alarm02_0135
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Alarm02_0135 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Alarm03_0136
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Alarm03_0136 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Alarm04_0137
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Alarm04_0137 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Alarm05_0138
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Alarm05_0138 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Alarm06_0139
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Alarm06_0139 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Alarm07_0140
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Alarm07_0140 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Alarm08_0141
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Alarm08_0141 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Alarm09_0142
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Alarm09_0142 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Alarm10_0143
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Alarm10_0143 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_chimes_0144
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_chimes_0144 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_chord_0145
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_chord_0145 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_ding_0146
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_ding_0146 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_ir_begin_0147
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_ir_begin_0147 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_ir_end_0148
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_ir_end_0148 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_ir_inter_0149
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_ir_inter_0149 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_notify_0150
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_notify_0150 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_recycle_0151
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_recycle_0151 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Ring01_0152
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Ring01_0152 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Ring02_0153
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Ring02_0153 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Ring03_0154
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Ring03_0154 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Ring04_0155
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Ring04_0155 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Ring05_0156
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Ring05_0156 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Ring06_0157
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Ring06_0157 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Ring07_0158
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Ring07_0158 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Ring08_0159
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Ring08_0159 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Ring09_0160
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Ring09_0160 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Ring10_0161
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Ring10_0161 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_ringout_0162
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_ringout_0162 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Disambiguation_0163
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Disambiguation_0163 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Misrecognition_0164
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Misrecognition_0164 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Off_0165
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Off_0165 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_On_0166
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_On_0166 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Sleep_0167
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Sleep_0167 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_tada_0168
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_tada_0168 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Background_0169
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Background_0169 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Balloon_0170
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Balloon_0170 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Critical_0171
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Critical_0171 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Low_0172
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Low_0172 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Stop_0173
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Stop_0173 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Default_0174
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Default_0174 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Ding_0175
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Ding_0175 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Error_0176
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Error_0176 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Exclamation_0177
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Exclamation_0177 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Discovered_0178
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Discovered_0178 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Foreground_0179
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Foreground_0179 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Fail_0180
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Fail_0180 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Insert_0181
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Insert_0181 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Remove_0182
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Remove_0182 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Bar_0183
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Bar_0183 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Sound_0184
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Sound_0184 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Logon_0185
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Logon_0185 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Command_0186
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Command_0186 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Nudge_0187
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Nudge_0187 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Minimize_0188
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Minimize_0188 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Start_0189
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Start_0189 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Calendar_0190
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Calendar_0190 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Email_0191
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Email_0191 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Messaging_0192
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Messaging_0192 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Generic_0193
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Generic_0193 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Notify_0194
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Notify_0194 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Blocked_0195
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Blocked_0195 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_complete_0196
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_complete_0196 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Connection_0197
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Connection_0197 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Notification_0198
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Notification_0198 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Recycle_0199
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Recycle_0199 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Restore_0200
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Restore_0200 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Ringin_0201
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Ringin_0201 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Ringout_0202
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Ringout_0202 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Shutdown_0203
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Shutdown_0203 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Startup_0204
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Startup_0204 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Unlock_0205
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Unlock_0205 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Control_0206
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Control_0206 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_button-pressed_0207
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_button-pressed_0207 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_button-toggle-off_0208
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_button-toggle-off_0208 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_button-toggle-on_0209
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_button-toggle-on_0209 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_desktop-login_0210
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_desktop-login_0210 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_desktop-logout_0211
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_desktop-logout_0211 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_dialog-error_0212
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_dialog-error_0212 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_dialog-information_0213
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_dialog-information_0213 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_dialog-question_0214
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_dialog-question_0214 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_dialog-warning_0215
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_dialog-warning_0215 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_phone-incoming-call_0216
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_phone-incoming-call_0216 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_system-ready_0217
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_system-ready_0217 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_window-slide_0218
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_window-slide_0218 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Kopete_Message_buzz_0219
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Kopete_Message_buzz_0219 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Kopete_Message_Highlight_0220
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Kopete_Message_Highlight_0220 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Kopete_Message_Received_0221
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Kopete_Message_Received_0221 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Kopete_Message_Sent_0222
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Kopete_Message_Sent_0222 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Kopete_Message_Sent_old_0223
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Kopete_Message_Sent_old_0223 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Kopete_User_is_Offline_0224
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Kopete_User_is_Offline_0224 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Kopete_User_is_Online_0225
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Kopete_User_is_Online_0225 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_Kopete_yahoomail_0226
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_Kopete_yahoomail_0226 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_zelda_bell_0227
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_zelda_bell_0227 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_zelda_buddylogin_0228
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_zelda_buddylogin_0228 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_zelda_buddylogout_0229
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_zelda_buddylogout_0229 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_zelda_button-pressed_0230
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_zelda_button-pressed_0230 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_zelda_button-toggle-off_0231
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_zelda_button-toggle-off_0231 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_zelda_button-toggle-on_0232
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_zelda_button-toggle-on_0232 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_zelda_desktop-login_0233
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_zelda_desktop-login_0233 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_zelda_desktop-logout_0234
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_zelda_desktop-logout_0234 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_zelda_dialog-error_0235
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_zelda_dialog-error_0235 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_zelda_dialog-information_0236
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_zelda_dialog-information_0236 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_zelda_dialog-question_0237
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_zelda_dialog-question_0237 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_zelda_dialog-warning_0238
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_zelda_dialog-warning_0238 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_zelda_email_0239
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_zelda_email_0239 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_zelda_emptytrash_0240
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_zelda_emptytrash_0240 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_zelda_imreceived_0241
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_zelda_imreceived_0241 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_zelda_imsent_0242
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_zelda_imsent_0242 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_zelda_longaction_0-243
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_zelda_longaction_0-243 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_zelda_lowbatt_0-244
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_zelda_lowbatt_0-244 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_zelda_maximize_0245
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_zelda_maximize_0245 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_zelda_minimize_0246
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_zelda_minimize_0246 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_zelda_unmaximize_0247
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_zelda_unmaximize_0247 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_alarm-clock-elapsed_zorin_0248
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_alarm-clock-elapsed_zorin_0248 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_bell_zorin_0249
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_bell_zorin_0249 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_button-pressed_zorin_0250
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_button-pressed_zorin_0250 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_button-toggle-off_zorin_0251
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_button-toggle-off_zorin_0251 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_button-toggle-on_zorin_0252
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_button-toggle-on_zorin_0252 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_camera-shutter_zorin_0253
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_camera-shutter_zorin_0253 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_desktop-login_zorin_0254
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_desktop-login_zorin_0254 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_desktop-logout_zorin_0255
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_desktop-logout_zorin_0255 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_device-added_zorin_0256
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_device-added_zorin_0256 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_device-removed_zorin_0257
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_device-removed_zorin_0257 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_dialog-error_zorin_0258
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_dialog-error_zorin_0258 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_dialog-information_zorin_0259
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_dialog-information_zorin_0259 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_dialog-question_zorin_0260
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_dialog-question_zorin_0260 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_dialog-warning_zorin_0261
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_dialog-warning_zorin_0261 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_message-new-email_zorin_0262
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_message-new-email_zorin_0262 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_message-new-instant_zorin_0263
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_message-new-instant_zorin_0263 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_message_zorin_0264
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_message_zorin_0264 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_phone-incoming-call_zorin_0265
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_phone-incoming-call_zorin_0265 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_phone-outgoing-busy_zorin_0266
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_phone-outgoing-busy_zorin_0266 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_service-login_zorin_0268
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_service-login_zorin_0268 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_service-logout_zorin_0269
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_service-logout_zorin_0269 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_success_zorin_0270
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_success_zorin_0270 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_suspend-error_zorin_0271
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_suspend-error_zorin_0271 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_system-ready_zorin_0272
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_system-ready_zorin_0272 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_trash-empty_zorin_0273
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_trash-empty_zorin_0273 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
(
  sleep 0.07
  (
    TIMER_THEN_001=$(/usr/bin/date +%s%N)
    play_window-slide_zorin_0274
    TIMER_NOW_002=$(/usr/bin/date +%s%N)
    TOTAL_TIME="$(((${TIMER_NOW_002} - ${TIMER_THEN_001}) / 1000000))"
    echo "${TOTAL_TIME} play_window-slide_zorin_0274 ${TOTAL_TIME}" >>sound-list.txt
  ) &
)
