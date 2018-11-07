#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:31331662:d72b837b5aade63afaca1299ee684c0a348aa32f; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:26850634:2a3ba7d4a817609495592c66dcb1d4e74f030e90 EMMC:/dev/block/bootdevice/by-name/recovery d72b837b5aade63afaca1299ee684c0a348aa32f 31331662 2a3ba7d4a817609495592c66dcb1d4e74f030e90:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
