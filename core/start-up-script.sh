#!/usr/bin/bash

(
  mkdir -p /opt/ramdisk || exit 1
  sudo mount -t tmpfs -o size=2048M tmpfs /opt/ramdisk || exit 2
  cp -r /bin/ /opt/ramdisk || exit 3
  cp -r /sbin/ /opt/ramdisk || exit 4
  sudo chown -R "$USER" /opt/ramdisk || exit 5
  mkdir -p /opt/ramdisk/core || exit 6
  cp -r -t /opt/ramdisk/core /home/luxcium/bin/* || exit 7
  cp -r -t /opt/ramdisk/core /home/luxcium/ahmyzsh/core/bin/* || exit 8
  add_to_path_() {
    [ -z "$1" ] || [ -d "$1" ] && export PATH="${1}:${PATH}"
  }
  add_to_path_ /opt/ramdisk/sbin || exit 9
  add_to_path_ /opt/ramdisk/bin || exit 10
  add_to_path_ /opt/ramdisk/core || exit 11
  echo "$PATH"
)
(play -qv 0.1 /usr/share/sounds/Oxygen-Sys-Log-Out.ogg chorus 0.4 0.9 50 0.5 0.25 2 -t 40 0.6 0.2 3 -s 60 0.6 0.3 1.3 -t) &
