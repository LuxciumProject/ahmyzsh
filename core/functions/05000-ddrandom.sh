function ddrandom() {
  sudo ionice -c 1 -n 5 dd if=/dev/random \
    of="${2:-./}random-$(getstamp 64).binary" \
    count="${1:=1}" \
    bs="33554431"
  #/run/media/luxcium/2TB-Seagate/Random-$(getstamp 100)
}

function ddzeros() {
  sudo ionice -c 1 -n 5 dd if=/dev/random \
    of="${2:-./}zeros-$(getstamp 64).binary" \
    count="${1:-1}" \
    bs="33554431"
  #/run/media/luxcium/2TB-Seagate/Random-$(getstamp 100)
}
