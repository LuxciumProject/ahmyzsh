function ddrandom() {
  dd if=/dev/random \
    of="${1}random-$(getstamp 64).binary" #/run/media/luxcium/2TB-Seagate/Random-$(getstamp 100)
  count="${2}"
  bs="1024x1024"
}

function ddzeros() {
  dd if=/dev/random \
    of="${1}zeros-$(getstamp 64).binary" #/run/media/luxcium/2TB-Seagate/Random-$(getstamp 100)
  count="${2}"
  bs="1024x1024"
}
