#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:32437582:aa3039ace48524eed596618d63e14902ba2430dc; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:26781002:546eaeacdcca81986a84b137496beb7f08c09861 EMMC:/dev/block/bootdevice/by-name/recovery aa3039ace48524eed596618d63e14902ba2430dc 32437582 546eaeacdcca81986a84b137496beb7f08c09861:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
