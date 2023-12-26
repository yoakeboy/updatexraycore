#!/bin/bash

XRAY_PATH="/usr/local/bin"
XRAY_DOWNLOAD_LINK="https://github.com/XTLS/Xray-core/releases/download/v1.8.6/Xray-linux-64.zip"
CONFIG_PATH="/etc/xray"

cd /

cp "${CONFIG_PATH}/config.json" "${CONFIG_PATH}/config_backup.json"

wget "${XRAY_DOWNLOAD_LINK}" -O xray-latest.zip

unzip -jo xray-latest.zip "xray" -d "${XRAY_PATH}"

rm xray-latest.zip

systemctl restart xray

if systemctl is-active --quiet xray; then
  echo "XRay Core berhasil diperbaharui."
else
  echo "Gagal memperbarui XRay Core."
fi

cd
