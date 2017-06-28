Feature script Auto-Install : 

- OpenSSH, port : 22, 80
- Dropbear, port : 143, 443
- Squid3, port : 8080, 3128 (limit to IP SSH)
- Badvpn   : badvpn-udpgw port 7300
- Webmin   : http://IPVPS:10000/
- Nginx    : 81
- OpenVPN TCP 1194
- Script menu : senarai perintah
- Script usernew : membuat akaun SSH
- Script trial : membuat akaun trial
- Script hapus : menghapus akaun SSH
- Script login : semak login user
- Script member : senarai user
- Script resvis : restart service dropbear, webmin, squid3, openvpn dan ssh
- Script speedtest : speedtest VPS
- Script about : informasi tentang script auto install

Sebelum script Auto Install berikut diinstall, pastikan bahwa VPS Anda mempunyai OS Debian 7 32 Bit. Pastikan juga VPS masih fresh.

Berikut adalah langkah-langkah eksekusi Script Auto Install untuk Debian 7 32 Bit :

1. Install sertifikat dengan perintah :

apt-get install ca-certificates

2. Download script dengan perintah :

wget https://github.com/blazevpn/autoscript/blob/master/debian7.sh

3. Tetapkan permission dengan perintah :

chmod +x debian7.sh

4. Akir sekali, execute script dengan perintah :

./debian7.sh

Proses menginstall memakan waktu lebih kurang 3 – 5 minit.
