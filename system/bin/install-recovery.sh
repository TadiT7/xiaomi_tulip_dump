#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:32601422:d08b8c89e049c822017c99250c35acf9fa5a6190; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:26441034:9bc9c3f6c522dee1d6898f95a86f1e4c924dd2e3 EMMC:/dev/block/bootdevice/by-name/recovery d08b8c89e049c822017c99250c35acf9fa5a6190 32601422 9bc9c3f6c522dee1d6898f95a86f1e4c924dd2e3:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
