#!/bin/bash

function dnfcup() {
  (
    (
      sudo dnf clean all &&
        sudo dnf makecache
    ) &&
      (
        (
          sudo nice -n -15 ionice -c 1 -n 2 dnf upgrade --downloadonly -y &
        ) >/dev/null
      ) 2>/dev/null
  ) &&
    sudo nice -n -15 ionice -c 2 -n 0 dnf upgrade --setopt=keepcache=1
}
