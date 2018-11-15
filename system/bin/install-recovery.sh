#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:31290702:05a8d6ce3b509feac9b69ffe72f78016adff9c5d; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:26781002:62ccb31f7a78d323c232b3ddc54cf15f4d150773 EMMC:/dev/block/bootdevice/by-name/recovery 05a8d6ce3b509feac9b69ffe72f78016adff9c5d 31290702 62ccb31f7a78d323c232b3ddc54cf15f4d150773:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
