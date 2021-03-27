#!/usr/bin/env zsh

source $HOME/ahmyzsh/core/aliases/12012-ALS-sounds.sh

(
  sleep 2.5
  # play_NTV_question_btv
  # play_NTV_error_tv3
) &

enable_systemctl up && (play_zelda_button-toggle-on &) || (play_osx2_0005_old_school2 &)

(
  source /home/luxcium/ahmyzsh/core/functions/00000-upnboot.sh
  _dnf_clean_all
  _dnf_makecache
  _get_updates && (
    play_complete1
  ) || play_etc-dialog
) &
# play_kdemod-error
(
  (code-insiders /home/luxcium/ahmyzsh && (play_screen-capture &) || (play_osx2_0005_old_school2  &))
  (gnome-terminal --title='Gnome Terminal' --class=gnome-terminal-Z6C4C35AEx --name=gnome-terminal-Z757425E8x --role=gnome-terminal-ZF987CDA0x && play_menu-select-a || play_etc-dialog)

  sudo ionice -c 1 -n 6 -p $(pidof -w -x code-insiders) && (play_screen-capture &) || (play_osx2_0005_old_school2 &)
  sudo renice -n 5 -p $(pidof -w -x code-insiders) && (play_screen-capture &) || (play_osx2_0005_old_school2 &)
  sudo ionice -c 2 -n 1 -p $(pidof -w -x gnome-terminal) && (play_screen-capture &) || (play_osx2_0005_old_school2 &)
  sudo renice -n 10 -p $(pidof -w -x gnome-terminal) && (play_screen-capture &) || (play_osx2_0005_old_school2 &)
) &

(

  (sudo fc-cache -rfE && (

    play_information-dialog &
  ) || (play_osx2_0005_old_school2 &)) &
  (fc-cache -rfE && (

    play_information-dialog &
  ) || (play_osx2_0005_old_school2 &)) &

  (
    eval $(fnm env) && (

      play_information-dialog &
    ) || (play_osx2_0005_old_school2 && exit 1)
  ) && (

    ( (fnm install 10) && (play_kdemod-question &) || (play_osx2_0005_old_school2 &))
    ( (fnm install 12) && (play_kdemod-question &) || (play_osx2_0005_old_school2 &))
    ( (fnm install 14) && (play_kdemod-question &) || (play_osx2_0005_old_school2 &))
    ( (fnm install 15) && (play_kdemod-question &) || (play_osx2_0005_old_school2 &))
    ( (fnm install 16) && (play_kdemod-question &) || (play_osx2_0005_old_school2 &))

    fnm use default && (

      (play_information-dialog &)
    ) || (play_osx2_0005_old_school2 &)
  )

) &

(
  conda update --all -y && (play_screen-capture &) || (play_etc-dialog &)
)

(
  sudo systemctl enable redis --now && (play_screen-capture &) || (play_etc-dialog &)
  exit 1
)

exit 0
