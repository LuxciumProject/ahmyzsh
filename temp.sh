15min 12.723s pmlogger_check.service
8.061s dracut-initqueue.service
2.046s systemd-udev-settle.service
1.082s pmlogger.service
736ms dkms.service
685ms lvm2-monitor.service
685ms akmods.service
551ms udisks2.service
513ms initrd-switch-root.service
497ms systemd-logind.service
365ms pmie.service
332ms systemd-tmpfiles-clean.service
325ms sssd.service
321ms pmie_check.service
320ms upower.service
310ms smartd.service
286ms pmcd.service
281ms systemd-tmpfiles-setup.service
263ms lvm2-pvscan@259:3.service
212ms rtkit-daemon.service
208ms switcheroo-control.service
206ms systemd-homed.service
206ms systemd-machined.service
200ms libvirtd.service
169ms dnf-makecache.service
165ms initrd-parse-etc.service
163ms user@1000.service
154ms systemd-journal-flush.service
150ms systemd-udevd.service
150ms dbus-broker.service
148ms auditd.service
126ms pmlogger_daily-poll.service
116ms polkit.service
107ms dracut-cmdline.service
90ms accounts-daemon.service
89ms systemd-udev-trigger.service
83ms dmraid-activation.service
72ms systemd-vconsole-setup.service
71ms dracut-pre-pivot.service
68ms packagekit.service
61ms systemd-tmpfiles-setup-dev.service
48ms systemd-userdbd.service
45ms systemd-journald.service
44ms systemd-random-seed.service
43ms ModemManager.service
42ms cups.service
42ms dracut-pre-udev.service
39ms import-state.service
37ms systemd-fsck@dev-disk-by\x2duuid-21BB\x2d9C7B.service
35ms NetworkManager.service
33ms chronyd.service
31ms plymouth-quit-wait.service
31ms lm_sensors.service
31ms plymouth-quit.service
30ms colord.service
29ms flatpak-system-helper.service
28ms systemd-fsck@dev-mapper-fedora\x2d\x2dnvme\x2dusers_files.service
27ms initrd-cleanup.service
26ms systemd-fsck@dev-disk-by\x2duuid-95b1bbf9\x2d5601\x2d4fe5\x2d8460\x2d840644f8c7b9.service
25ms sshd.service
24ms plymouth-switch-root.service
24ms bluetooth.service
24ms gssproxy.service
23ms systemd-rfkill.service
23ms user-runtime-dir@1000.service
22ms sssd-kcm.service
19ms systemd-fsck-root.service
19ms rsyslog.service
19ms systemd-remount-fs.service
17ms livesys.service
17ms netcf-transaction.service
16ms plymouth-start.service
14ms systemd-sysctl.service
14ms systemd-update-utmp.service
14ms systemd-modules-load.service
14ms systemd-user-sessions.service
13ms plymouth-read-write.service
12ms systemd-repart.service
12ms initrd-udevadm-cleanup-db.service
10ms rpc-statd-notify.service
10ms avahi-daemon.service
9ms systemd-update-utmp-runlevel.service
7ms livesys-late.service
7ms nfs-convert.service
7ms kmod-static-nodes.service
5ms iscsi-shutdown.service
4ms dracut-shutdown.service
22ms redis_6379.service
583ms firewalld.service

The time when unit became active or started is printed after the "@" character.
The time the unit took to start is printed after the "+" character.

graphical.target @13.310s
└─multi-user.target @13.310s
└─pmlogger.service @12.226s +1.082s
└─pmcd.service @11.935s +286ms
└─network-online.target @11.928s
└─network.target @3.839s
└─network-pre.target @3.785s
└─firewalld.service @3.201s +583ms
└─polkit.service @3.432s +116ms
└─basic.target @3.194s
└─dbus-broker.service @3.224s +150ms
└─dbus.socket @3.188s
└─sysinit.target @3.183s
└─systemd-update-utmp.service @3.168s +14ms
└─auditd.service @3.018s +148ms
└─systemd-tmpfiles-setup.service @2.732s +281ms
└─import-state.service @2.691s +39ms
└─local-fs.target @2.688s
└─boot-efi.mount @2.668s +20ms
└─boot.mount @2.653s +11ms
└─systemd-fsck@dev-disk-by\x2duuid-95b1bbf9\x2d5601\x2d4fe5\x2d8460\x2d840644f8c7b9.service @2.625s +26ms
└─local-fs-pre.target @2.621s
└─lvm2-monitor.service @392ms +685ms
└─dm-event.socket @387ms
└─-.mount
└─system.slice
└─-.slice

(
  systemd-analyze critical-chain "dkms.service"
  systemd-analyze critical-chain "lvm2-monitor.service"
  systemd-analyze critical-chain "akmods.service"
  systemd-analyze critical-chain "udisks2.service"
  systemd-analyze critical-chain "initrd-switch-root.service"
  systemd-analyze critical-chain "systemd-logind.service"
  systemd-analyze critical-chain "pmie.service"
  systemd-analyze critical-chain "systemd-tmpfiles-clean.service"
  systemd-analyze critical-chain "sssd.service"
  systemd-analyze critical-chain "pmie_check.service"
  systemd-analyze critical-chain "upower.service"
  systemd-analyze critical-chain "smartd.service"
  systemd-analyze critical-chain "pmcd.service"
  systemd-analyze critical-chain "systemd-tmpfiles-setup.service"
  systemd-analyze critical-chain "lvm2-pvscan@259:3.service"
  systemd-analyze critical-chain "rtkit-daemon.service"
  systemd-analyze critical-chain "switcheroo-control.service"
  systemd-analyze critical-chain "systemd-homed.service"
  systemd-analyze critical-chain "systemd-machined.service"
  systemd-analyze critical-chain "libvirtd.service"
  systemd-analyze critical-chain "dnf-makecache.service"
  systemd-analyze critical-chain "initrd-parse-etc.service"
  systemd-analyze critical-chain "user@1000.service"
  systemd-analyze critical-chain "systemd-journal-flush.service"
  systemd-analyze critical-chain "systemd-udevd.service"
  systemd-analyze critical-chain "dbus-broker.service"
  systemd-analyze critical-chain "auditd.service"
  systemd-analyze critical-chain "pmlogger_daily-poll.service"
  systemd-analyze critical-chain "polkit.service"
  systemd-analyze critical-chain "dracut-cmdline.service"
  systemd-analyze critical-chain "accounts-daemon.service"
  systemd-analyze critical-chain "systemd-udev-trigger.service"
  systemd-analyze critical-chain "dmraid-activation.service"
  systemd-analyze critical-chain "systemd-vconsole-setup.service"
  systemd-analyze critical-chain "dracut-pre-pivot.service"
  systemd-analyze critical-chain "packagekit.service"
  systemd-analyze critical-chain "systemd-tmpfiles-setup-dev.service"
  systemd-analyze critical-chain "systemd-userdbd.service"
  systemd-analyze critical-chain "systemd-journald.service"
  systemd-analyze critical-chain "systemd-random-seed.service"
  systemd-analyze critical-chain "ModemManager.service"
  systemd-analyze critical-chain "cups.service"
  systemd-analyze critical-chain "dracut-pre-udev.service"
  systemd-analyze critical-chain "import-state.service"
  systemd-analyze critical-chain "systemd-fsck@dev-disk-by\x2duuid-21BB\x2d9C7B.service"
  systemd-analyze critical-chain "NetworkManager.service"
  systemd-analyze critical-chain "chronyd.service"
  systemd-analyze critical-chain "plymouth-quit-wait.service"
  systemd-analyze critical-chain "lm_sensors.service"
  systemd-analyze critical-chain "plymouth-quit.service"
  systemd-analyze critical-chain "colord.service"
  systemd-analyze critical-chain "flatpak-system-helper.service"
  systemd-analyze critical-chain "systemd-fsck@dev-mapper-fedora\x2d\x2dnvme\x2dusers_files.service"
  systemd-analyze critical-chain "initrd-cleanup.service"
  systemd-analyze critical-chain "systemd-fsck@dev-disk-by\x2duuid-95b1bbf9\x2d5601\x2d4fe5\x2d8460\x2d840644f8c7b9.service"
  systemd-analyze critical-chain "sshd.service"
  systemd-analyze critical-chain "plymouth-switch-root.service"
  systemd-analyze critical-chain "bluetooth.service"
  systemd-analyze critical-chain "gssproxy.service"
  systemd-analyze critical-chain "systemd-rfkill.service"
  systemd-analyze critical-chain "user-runtime-dir@1000.service"
  systemd-analyze critical-chain "sssd-kcm.service"
  systemd-analyze critical-chain "systemd-fsck-root.service"
  systemd-analyze critical-chain "rsyslog.service"
  systemd-analyze critical-chain "systemd-remount-fs.service"
  systemd-analyze critical-chain "livesys.service"
  systemd-analyze critical-chain "netcf-transaction.service"
  systemd-analyze critical-chain "plymouth-start.service"
  systemd-analyze critical-chain "systemd-sysctl.service"
  systemd-analyze critical-chain "systemd-update-utmp.service"
  systemd-analyze critical-chain "systemd-modules-load.service"
  systemd-analyze critical-chain "systemd-user-sessions.service"
  systemd-analyze critical-chain "plymouth-read-write.service"
  systemd-analyze critical-chain "systemd-repart.service"
  systemd-analyze critical-chain "initrd-udevadm-cleanup-db.service"
  systemd-analyze critical-chain "rpc-statd-notify.service"
  systemd-analyze critical-chain "avahi-daemon.service"
  systemd-analyze critical-chain "systemd-update-utmp-runlevel.service"
  systemd-analyze critical-chain "livesys-late.service"
  systemd-analyze critical-chain "nfs-convert.service"
  systemd-analyze critical-chain "kmod-static-nodes.service"
  systemd-analyze critical-chain "iscsi-shutdown.service"
  systemd-analyze critical-chain "dracut-shutdown.service"
  systemd-analyze critical-chain "redis_6379.service"
  systemd-analyze critical-chain "firewalld.service"
)

# https://libvirt.org
# https://www.freedesktop.org/wiki/Software/systemd/APIFileSystems
# https://www.freedesktop.org/wiki/Software/systemd/logind
# https://www.freedesktop.org/wiki/Software/systemd/machined
# https://www.freedesktop.org/wiki/Software/systemd/multiseat
# https://www.rsyslog.com/doc/
# man auditd|head
# man bluetoothd|head
# man chronyd|head
# man chrony.conf|head
# man cupsd|head
# man dbus-broker-launch|head
# man dkms|head
# man dmeventd|head
# man lvcreate|head
# man lvchange|head
# man vgchange|head
# man dracut-cmdline.service|head
# man dracut-pre-pivot.service|head
# man dracut-pre-udev.service|head
# man dracut-shutdown.service|head
# man firewalld|head
# man iscsid|head
# man iscsiadm|head
# man libvirtd|head
# man NetworkManager|head
# man pmcd|head
# man pmie_check|head
# man pmie|head
# man pmlogger_daily|head
# man polkit|head
# man pvscan|head
# man rsyslogd|head
# man smartd|head
# man smartd.conf|head
# man sshd|head
# man sshd_config|head
# man sssd-kcm|head
# man systemd-fsck-root.service|head
# man systemd-homed.service|head
# man systemd-fsck@.service|head
# man journald.conf|head
# man systemd-journald.service|head
# man logind.conf|head
# man systemd-logind.service|head
# man systemd-modules-load.service|head
# man systemd-machined.service|head
# man systemd-random-seed.service|head
# man modules-load.d|head
# man systemd-remount-fs.service|head
# man random|head
# man systemd-rfkill.service|head
# man systemd-repart.service|head
# man sysctl.d|head
# man systemd-sysctl.service|head
# man systemd-udevd.service|head
# man systemd-sysv-generator|head
# man systemd-update-utmp.service|head
# man udev|head
# man systemd-user-sessions.service|head
# man utmp|head
# man systemd-vconsole-setup.service|head
# man systemd-userdbd.service|head
# man tmpfiles.d|head
# man vconsole.conf|head
# man udev|head
# man systemd-tmpfiles|head
# man udisks|head
# man systemd-udevd.service|head
# man user@.service|head
# man upowerd|head
