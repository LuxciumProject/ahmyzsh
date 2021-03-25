#!/usr/bin/env zsh
source $HOME/ahmyzsh/core/aliases/12012-ALS-sounds.sh

enable_systemctl up && play_005_warning-dialog || play_002_etc-dialog

eval $(fnm env) && play_004_menu-select-a || play_002_etc-dialog
fnm use default && play_003_menu-select-b || play_002_etc-dialog

(code-insiders /home/luxcium/ahmyzsh && play_003_menu-select-b || play_002_etc-dialog)
# (gnome-terminal --title='Gnome Terminal' --class=gnome-terminal-Z6C4C35AEx --name=gnome-terminal-Z757425E8x --role=gnome-terminal-ZF987CDA0x && play_004_menu-select-a || play_002_etc-dialog) &

(
  sudo ionice -c 1 -n 6 -p $(pidof -w -x code-insiders) && play_008_information-dialog || play_002_etc-dialog
  sudo renice -n 5 -p $(pidof -w -x code-insiders) && play_004_menu-select-a || play_002_etc-dialog
  sudo ionice -c 2 -n 1 -p $(pidof -w -x gnome-terminal) && play_008_information-dialog || play_002_etc-dialog
  sudo renice -n 10 -p $(pidof -w -x gnome-terminal) && play_003_menu-select-b || play_002_etc-dialog
)

(
  conda update --all -y && play_count-down2 || play_002_etc-dialog
)
(
  (fnm install 10)
  (fnm install 12)
  (fnm install 14)
  (fnm install 15)

  sudo fc-cache -rfE
  fc-cache -rfE
)
(
  source /home/luxcium/ahmyzsh/core/functions/00000-upnboot.sh
  _dnf_clean_all
  _dnf_makecache
  _get_updates && (
    play_count-down2
    play_count-down2
  ) || play_002_etc-dialog
) &

(
  sudo systemctl enable redis --now && play_buddylogin || play_002_etc-dialog
  exit 1
)
exit 0

# spx
# synthesize --text "The speech synthesizer greets you" --audio output greetings.wav

# (
#   # dckr_redis_start_6380
#   # dckr_redis_start_6381 &
#   # dckr_redis_start_6382 &
#   # dckr_redis_start_6383 &
#   # dckr_redis_start_6384 &
# )
# play_001_check-click
# play_002_etc-dialog
# play_003_menu-select-b
# play_004_menu-select-a
# play_005_warning-dialog
# play_006_ask-dialog
# play_007_error-dialog
# play_008_information-dialog
# play_bling
# play_buddylogin
# play_com
# play_complete1

# play2_desktop-login

# echo "play_001_check-click"
# play_001_check-click
# echo "play_002_etc-dialog"
# play_002_etc-dialog
# echo "play_003_menu-select-b"
# play_003_menu-select-b
# echo "play_004_menu-select-a"
# play_004_menu-select-a
# echo "play_005_warning-dialog"
# play_005_warning-dialog
# echo "play_006_ask-dialog"
# play_006_ask-dialog
# echo "play_007_error-dialog"
# play_007_error-dialog
# echo "play_008_information-dialog"
# play_008_information-dialog
# echo "play_bling"
# play_bling
# echo "play_buddylogin"
# play_buddylogin
# echo "play_com"
# play_com
# echo "play_complete1"
# play_complete1
# echo "play_complete2"
# play_complete2
# echo "play_count-down1"
# play_count-down1
# echo "play_count-down2"
# play_count-down2
# echo "play_crystal"
# play_crystal
# echo "play1_desktop-login"
# play1_desktop-login
# echo "play2_desktop-login"
# play2_desktop-login
# echo "play1_dialog-error"
# play1_dialog-error
# echo "play2_dialog-error"
# play2_dialog-error
# echo "play3_dialog-error"
# play3_dialog-error
# ## echo "play4_dialog-error"
# ## play4_dialog-error
# echo "play_kdemod-error"
# play_kdemod-error
# echo "play_kdemod-general-system-message"
# play_kdemod-general-system-message
# echo "play_kdemod-im-buddy-offline"
# play_kdemod-im-buddy-offline
# echo "play_kdemod-im-buddy-online"
# play_kdemod-im-buddy-online
# echo "play_kdemod-im-message-received"
# play_kdemod-im-message-received
# echo "play_kdemod-im-message-sent"
# play_kdemod-im-message-sent
# echo "play_kdemod-new-e-maill"
# play_kdemod-new-e-maill
# echo "play_kdemod-question"
# play_kdemod-question

# play_002_etc-dialog
# play_006_ask-dialog
# play_007_error-dialog
# play_001_check-click
# play_005_warning-dialog
# play_008_information-dialog

# play_004_menu-select-a
# play_003_menu-select-b

# play_bling
# play_buddylogin
# play_com
# play_complete1
