#!/usr/bin/env zsh

enable_systemctl up

eval $(fnm env)
fnm use default

(
  code-insiders /home/luxcium/ahmyzsh
  (
    sudo ionice -c 1 -n 5 -p $(pidof -w -x code-insiders)
    sudo renice -n 5 -p $(pidof -w -x code-insiders)
  ) &
) &

(
  sleep 14
  (fnm install 10) &
  (fnm install 12) &
  (fnm install 14) &
  (fnm install 15) &

  sudo fc-cache -rfE &
  fc-cache -rfE &
) &

conda update --all -y

(dokr_redis &) &

(play -qv 0.85 /usr/share/sounds/Oxygen-Im-Sms.ogg tremolo 10 100 chorus 0.4 0.9 50 0.5 0.25 2 -t 40 0.6 0.2 3 -s 60 0.6 0.3 1.3 -t &)

exit 0
