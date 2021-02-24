#!/usr/bin/env zsh

enable_systemctl up

eval $(fnm env)
fnm use default

# (code-insiders /home/luxcium/ahmyzsh &)
# (gnome-terminal --title='Gnome Terminal' --class=gnome-terminal-Z6C4C35AEx --name=gnome-terminal-Z757425E8x --role=gnome-terminal-ZF987CDA0x &)

(
  sudo ionice -c 1 -n 6 -p $(pidof -w -x code-insiders)
  sudo renice -n 5 -p $(pidof -w -x code-insiders)
  sudo ionice -c 2 -n 1 -p $(pidof -w -x gnome-terminal)
  sudo renice -n 10 -p $(pidof -w -x gnome-terminal)
) &
# spx
# synthesize --text "The speech synthesizer greets you" --audio output greetings.wav
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
