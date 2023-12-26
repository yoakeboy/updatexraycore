# UPDATE XRAY CORE 1.8.6 KHUSUS SCRIPT FIGHTER TUNNEL

Script ini otomatis mengganti XRAY core lama ke versi 1.8.6.

## CARA 1
1. Keluar script dengan cara tekan CTRL + C pada client ssh (JuiceSSH/Termius)
2. Jalankan script berikut
   
   ```bash
   bash <(curl -sSL https://raw.githubusercontent.com/yoakeboy/updatexraycore/main/update.sh)

## CARA 2

1. Clone repositori ini

   ```bash
   git clone https://github.com/yoakeboy/updatexraycore.git
   
2. Pindah Folder
   ```bash
   cd updatexraycore

4. Membuat script agar dapat di eksekusi
   ```bash
   chmod +x update.sh

6. Jalankan script
   ```bash
   ./update.sh
