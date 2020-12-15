alias playshutdown="(play -qv 0.25 /usr/share/sounds/deepin/stereo/system-shutdown.wav)"
alias dnfup="( ( (sudo nice -n -35 ionice -c 1 -n 0 dnf upgrade --downloadonly --setopt=keepcache=1 -y &) &)>/dev/null)2>/dev/null; sudo nice -n 15 dnf upgrade --setopt=keepcache=1"

function dnfcup() {
  (
    (
      sudo dnf clean all \
        && dnf makecache
    ) \
      && ( (
        sudo nice -n -35 ionice -c 1 -n 2 dnf upgrade --downloadonly -y &
      ) >/dev/null) 2>/dev/null
  )
  sudo nice -n -15 ionice -c 1 -n 4 dnf upgrade --setopt=keepcache=1
}

alias up="sudo nice -n -15 ionice -c 1 -n 3 dnf upgrade --setopt=keepcache=1 && sudo reboot"

alias upndown="dnfup && playshutdown& sleep 3; sudo shutdown now"

function upnboot() {
  dnfup \
    && disable_at_shutdown_ \
    && playshutdown &
  sleep 3.5
  sudo reboot

}
function disable_at_shutdown_() {
  sudo systemctl stop docker.socket
  sudo systemctl stop docker.service
  sudo systemctl stop containerd.service
  sudo systemctl disable docker.socket
  sudo systemctl disable docker.service
  sudo systemctl disable containerd.service
  sudo systemctl stop ModemManager.service
  sudo systemctl disable ModemManager.service
  sudo systemctl stop bluetooth.service
  sudo systemctl disable bluetooth.service
  sudo systemctl stop NetworkManager.service
  sudo systemctl disable NetworkManager.service
  #  /usr/lib/systemd/system/docker.socket
  sudo akmods
  sudo systemctl disable akmods
  sudo systemctl stop abrtd.service
  sudo systemctl disable abrtd.service
  sudo systemctl stop avahi-daemon.service
  sudo systemctl disable avahi-daemon.service
}

#* /usr/lib/systemd/system/docker.service
## Description=Docker Application Container Engine
## Documentation=https://docs.docker.com
#& After=
# network-online.target firewalld.service containerd.service
#& Wants=
# network-online.target
#& Requires=
# docker.socket containerd.service

#* [Unit] # /usr/lib/systemd/system/containerd.service
## Description=containerd container runtime
## Documentation=https://containerd.io
#& After=network.target local-fs.target

#* [Install]
#& WantedBy=multi-user.target

function enable_at_startup_() {

  sudo systemctl enable ModemManager.service
  sudo systemctl start ModemManager.service
  sudo systemctl enable bluetooth.service
  sudo systemctl start bluetooth.service
  sudo systemctl enable NetworkManager.service
  sudo systemctl start NetworkManager.service
  sudo systemctl enable akmods
  sudo systemctl start akmods
  sudo akmods
  sudo systemctl enable abrtd.service
  sudo systemctl start abrtd.service
  sudo systemctl enable avahi-daemon.service
  sudo systemctl start avahi-daemon.service
  sudo systemctl enable containerd.service
  sudo systemctl enable docker.socket
  sudo systemctl enable docker.service
  sudo systemctl start containerd.service
  sudo systemctl start docker.socket
  sudo systemctl start docker.service
}

# function 8ujn() nji9-plkçèé

# 6+ () {
#   (
#     (
#       sudo dnf clean all &&
#         dnf makecache
#     ) &&
#       ( (
#         sudo nice -n -35 ionice -c 1 -n 2 dnf upgrade --downloadonly -y &
#       ) >/dev/null) 2>/dev/null
#   )
#   sudo nice -n -15 ionice -c 1 -n 4 dnf upgrade --setopt=keepcache=1
# }

# alias XXX="dnfup && playshutdown& sleep 4; sudo reboot"

## systemd-analyze blame |cat
## 7.879s dracut-initqueue.service
## 6.021s abrtd.service
## 1.832s systemd-udev-settle.service
## 1.263s docker.service
## 1.180s upower.service
## 874ms pmlogger_check.service
## 775ms pmlogger.service
## 758ms dkms.service
## 610ms lvm2-monitor.service
## 560ms systemd-logind.service
## 547ms firewalld.service
## 501ms initrd-switch-root.service
## 439ms udisks2.service
## 361ms smartd.service
## 345ms pmie_check.service
## 342ms pmie.service
## 317ms sssd.service
## 296ms pmcd.service
## 260ms lvm2-pvscan@259:3.service
## 255ms systemd-tmpfiles-setup.service
## 218ms libvirtd.service
## 210ms akmods.service
## 178ms avahi-daemon.service
## 177ms user@1000.service
## 177ms initrd-parse-etc.service
## 177ms systemd-journal-flush.service
## 163ms rtkit-daemon.service
## 162ms switcheroo-control.service
## 156ms systemd-machined.service
## 156ms systemd-homed.service
## 147ms containerd.service
## 146ms auditd.service
## 116ms dracut-cmdline.service
## 113ms polkit.service
## 110ms dbus-broker.service
## 100ms systemd-udevd.service
## 92ms systemd-udev-trigger.service
## 83ms dmraid-activation.service
## 76ms systemd-vconsole-setup.service
## 73ms cups.service
## 69ms accounts-daemon.service
## 61ms dracut-pre-pivot.service
## 52ms var-lib-nfs-rpc_pipefs.mount
## 52ms ModemManager.service
## 45ms systemd-journald.service
## 45ms systemd-tmpfiles-setup-dev.service
## 45ms systemd-userdbd.service
## 41ms dracut-pre-udev.service
## 40ms import-state.service
## 40ms lm_sensors.service
## 35ms gssproxy.service
## 31ms systemd-fsck@dev-disk-by\x2duuid-21BB\x2d9C7B.service
## 31ms chronyd.service
## 31ms sshd.service
## 30ms bluetooth.service
## 29ms systemd-fsck@dev-mapper-fedora\x2d\x2dnvme\x2dusers_files.service
## 28ms initrd-cleanup.service
## 27ms dev-mapper-fedora\x2d\x2dnvme\x2dsystem_swap.swap
## 27ms systemd-fsck@dev-disk-by\x2duuid-95b1bbf9\x2d5601\x2d4fe5\x2d8460\x2d840644f8c7b9.service
## 26ms systemd-fsck-root.service
## 26ms boot-efi.mount
## 26ms sssd-kcm.service
## 25ms colord.service
## 25ms rsyslog.service
## 25ms plymouth-quit-wait.service
## 24ms plymouth-quit.service
## 23ms livesys.service
## 22ms NetworkManager.service
## 21ms systemd-remount-fs.service
## 20ms netcf-transaction.service
## 20ms user-runtime-dir@1000.service
## 20ms redis_6379.service
## 20ms plymouth-switch-root.service
## 18ms systemd-random-seed.service
## 14ms systemd-modules-load.service
## 14ms plymouth-read-write.service
## 14ms systemd-update-utmp.service
## 13ms systemd-sysctl.service
## 13ms initrd-udevadm-cleanup-db.service
## 13ms plymouth-start.service
## 12ms home.mount
## 12ms systemd-update-utmp-runlevel.service
## 11ms livesys-late.service
## 11ms sysroot.mount
## 11ms systemd-user-sessions.service
## 11ms boot.mount
## 11ms systemd-repart.service
## 10ms systemd-rfkill.service
## 8ms dev-hugepages.mount
## 7ms dev-mqueue.mount
## 7ms sys-kernel-debug.mount
## 7ms kmod-static-nodes.service
## 6ms dracut-shutdown.service
## 6ms nfs-convert.service
## 6ms rpc-statd-notify.service
## 5ms sys-fs-fuse-connections.mount
## 3ms tmp.mount
## 3ms sys-kernel-config.mount
## 2ms iscsi-shutdown.service
## 2ms docker.socket

#+ /usr/lib/systemd/system/containerd.service
#+ /usr/lib/systemd/system/containerd.service
#+ /usr/lib/systemd/system/containerd.service
#+ /usr/lib/systemd/system/containerd.service
# Copyright The containerd Authors.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#* [Unit] containerd.service
#% Description=containerd container runtime
#% Documentation=https://containerd.io
#& After=
# network.target local-fs.target

#* [Service]
#& ExecStartPre=-/sbin/modprobe overlay
#& ExecStart=/usr/bin/containerd

#& Type=notify
#& Delegate=yes
#& KillMode=process
#& Restart=always
#& RestartSec=5
# # Having non-zero Limit*s causes performance problems due to accounting overhead
# # in the kernel. We recommend using cgroups to do container-local accounting.
#& LimitNPROC=infinity
#& LimitCORE=infinity
#& LimitNOFILE=1048576
# # Comment TasksMax if your systemd version does not supports it.
# # Only systemd 226 and above support this version.
#& TasksMax=infinity
#& OOMScoreAdjust=-999

#* [Install]
#& WantedBy=multi-user.target

#+ /usr/lib/systemd/system/docker.service
#+ /usr/lib/systemd/system/docker.service
#+ /usr/lib/systemd/system/docker.service
#+ /usr/lib/systemd/system/docker.service

#* [Unit] docker.service
#% Description=Docker Application Container Engine
#% Documentation=https://docs.docker.com
#& After=
# network-online.target
# firewalld.service
# containerd.service
#& Wants=
# network-online.target
#& Requires=
# docker.socket
# containerd.service

#* [Service]
#& Type=notify
## the default is not to use systemd for cgroups because the delegate issues still
## exists and systemd currently does not support the cgroup feature set required
## for containers run by docker
#& ExecStart=/usr/bin/dockerd -H fd:// --containerd=/run/containerd/containerd.sock
#& ExecReload=/bin/kill -s HUP $MAINPID
#& TimeoutSec=0
#& RestartSec=2
#& Restart=always
#&
## Note that StartLimit* options were moved from "Service" to "Unit" in systemd 229.
## Both the old, and new location are accepted by systemd 229 and up, so using the old location
## to make them work for either version of systemd.
#& StartLimitBurst=3
#&
## Note that StartLimitInterval was renamed to StartLimitIntervalSec in systemd 230.
## Both the old, and new name are accepted by systemd 230 and up, so using the old name to make
## this option work for either version of systemd.
#& StartLimitInterval=60s
#&
## Having non-zero Limit*s causes performance problems due to accounting overhead
## in the kernel. We recommend using cgroups to do container-local accounting.
#& LimitNOFILE=infinity
#& LimitNPROC=infinity
#& LimitCORE=infinity
#&
## Comment TasksMax if your systemd version does not support it.
## Only systemd 226 and above support this option.
#& TasksMax=infinity
#&
## set delegate yes so that systemd does not reset the cgroups of docker containers
#& Delegate=yes
#&
## kill only the docker process, not all processes in the cgroup
#& KillMode=process
#& OOMScoreAdjust=-500
#&
#* [Install]
#& WantedBy=multi-user.target

#+ /etc/systemd/system/docker.socket
#+ /etc/systemd/system/docker.socket
#+ /etc/systemd/system/docker.socket
#+ /etc/systemd/system/docker.socket

#* [Unit] docker.socket
#% Description=Docker Socket for the API
#&
#* [Socket]
#& ListenStream=/run/docker.sock
#& SocketMode=0660
#& SocketUser=root
#& SocketGroup=docker
#&
#* [Install]
#& WantedBy=sockets.target
