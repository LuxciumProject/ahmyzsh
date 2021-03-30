#!/usr/bin/env zsh

source $HOME/ahmyzsh/core/aliases/12012-ALS-sounds.sh

(

  sleep 3
  # play_NTV_question_btv #  5.4742s
  play_NTV_error_tv3 # 3.0325s
) &

enable_systemctl up && (
  play_zelda_button-toggle-on &
) || (
  play_osx2_0002_assend_attention &
)

(

  (

    (

      source /home/luxcium/ahmyzsh/core/functions/00000-upnboot.sh
      _dnf_makecache_auto_update
      _dnf_makecache_all
    ) && (
      play_complete1 &
    ) || exit 1
  ) || (
    play_etc-dialog &
  )
) &

# play_kdemod-error

(

  (
    code-insiders /home/luxcium/ahmyzsh && (
      play_screen-capture &
    ) || (
      play_osx2_0002_assend_attention &
    )
  )
  (
    gnome-terminal --title='Gnome Terminal' --class=gnome-terminal-Z6C4C35AEx --name=gnome-terminal-Z757425E8x --role=gnome-terminal-ZF987CDA0x && (
      play_menu-select-a &
    ) || (
      play_etc-dialog &
    )
  )

  sudo ionice -c 2 -n 1 -p $(
    pidof -w -x code-insiders
  ) && (
    play_screen-capture &
  ) || (
    play_osx2_0002_assend_attention &
  )
  sudo renice -n 5 -p $(
    pidof -w -x code-insiders
  ) && (
    play_screen-capture &
  ) || (
    play_osx2_0002_assend_attention &
  )
  sudo ionice -c 2 -n 1 -p $(
    pidof -w -x gnome-terminal
  ) && (
    play_screen-capture &
  ) || (
    play_osx2_0002_assend_attention &
  )
  sudo renice -n 10 -p $(
    pidof -w -x gnome-terminal
  ) && (
    play_screen-capture &
  ) || (
    play_osx2_0002_assend_attention &
  )
) &

(

  (
    sudo fc-cache -rfE && (

      play_information-dialog &
    ) || (
      play_osx2_0002_assend_attention &
    )
  ) &
  (
    fc-cache -rfE && (

      play_information-dialog &
    ) || (
      play_osx2_0002_assend_attention &
    )
  ) &

  (

    eval $(
      fnm env
    ) && (

      play_information-dialog &
    ) || (
      play_osx2_0002_assend_attention && exit 1
    )
  ) && (

    (
      (
        fnm install 10
      ) && (
        play_kdemod-question &
      ) || (
        play_osx2_0002_assend_attention &
      )
    )
    (
      (
        fnm install 12
      ) && (
        play_kdemod-question &
      ) || (
        play_osx2_0002_assend_attention &
      )
    )
    (
      (
        fnm install 14
      ) && (
        play_kdemod-question &
      ) || (
        play_osx2_0002_assend_attention &
      )
    )
    (
      (
        fnm install 15
      ) && (
        play_kdemod-question &
      ) || (
        play_osx2_0002_assend_attention &
      )
    )
    (
      (
        fnm install 16
      ) && (
        play_kdemod-question &
      ) || (
        play_osx2_0002_assend_attention &
      )
    )

    fnm use default && (

      (
        play_information-dialog &
      )
    ) || (
      play_osx2_0002_assend_attention &
    )
  )

) &

(

  conda update --all -y && (
    play_screen-capture &
  ) || (
    (
      play_etc-dialog &
    ) &
  )
)

(

  sudo systemctl enable redis --now && (
    play_screen-capture &
  ) || (
    (
      play_etc-dialog &
    ) &
  )
  exit 1
)

exit 0
