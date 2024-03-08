#!/bin/bash

XRAY_PATH="/usr/local/bin"
XRAY_DOWNLOAD_LINK="https://github.com/XTLS/Xray-core/releases/download/v1.8.8/Xray-linux-64.zip"
CONFIG_PATH="/etc/xray"

cd /

cp "${CONFIG_PATH}/config.json" "${CONFIG_PATH}/config_backup.json"

wget "${XRAY_DOWNLOAD_LINK}" -O xray-latest.zip

unzip -jo xray-latest.zip "xray" -d "${XRAY_PATH}"

rm xray-latest.zip

systemctl restart xray

clear
systemctl status xray
echo "Tunggu 5 detik..."
sleep 5

clear
xray --version
echo "Sukses memperbaharui XRAY CORE. Tunggu 5 detik untuk kembali ke menu."
sleep 5

cd root
sleep 2
menu
