#!/bin/bash

# Mendefinisikan path ke XRay Core dan link untuk mengunduh
XRAY_PATH="/usr/local/bin"
XRAY_DOWNLOAD_LINK="https://github.com/XTLS/Xray-core/releases/download/v1.8.6/Xray-linux-64.zip"
CONFIG_PATH="/etc/xray"

# Pindah ke direktori root
cd /

# Cadangkan konfigurasi XRay Core
cp "${CONFIG_PATH}/config.json" "${CONFIG_PATH}/config_backup.json"

# Mengunduh versi terbaru XRay Core
wget "${XRAY_DOWNLOAD_LINK}" -O xray-latest.zip

# Unzip hanya file xray
unzip -j xray-latest.zip "xray" -d "${XRAY_PATH}"

# Menghapus file zip yang diunduh
rm xray-latest.zip

# Restart XRay Core
systemctl restart xray

# Status XRay Core
systemctl status xray