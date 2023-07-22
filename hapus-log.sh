#!/bin/sh
 
# true sebagai penanda bahwa perulangan ini berlangsung terus
while true
do
  # menampilkan informasi penggunaan disk dari semua berkas journalctl, baik yang aktif maupun yang diarsipkan
  journalctl --disk-usage
  # tunda 3 detik hingga pengecekan berikutnya
  sleep 3s
  # Menghapus journalctl log hingga ruang disk yang digunakan untuk log berkisar 10 MB
  sudo journalctl --vacuum-size=10M
  # tunda 3 detik
  sleep 3s
  # menampilkan informasi penggunaan disk dari semua berkas journalctl, baik yang aktif maupun yang diarsipkan
  journalctl --disk-usage
done
