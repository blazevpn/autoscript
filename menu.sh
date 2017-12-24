#!/bin/bash
# Created by Kang wahid
if [[ -e /etc/debian_version ]]; then
	OS=debian
	RCLOCAL='/etc/rc.local'
elif [[ -e /etc/centos-release || -e /etc/redhat-release ]]; then
	OS=centos
	RCLOCAL='/etc/rc.d/rc.local'
	chmod +x /etc/rc.d/rc.local
else
	echo "Sepertinya Anda tidak menjalankan installer ini pada sistem Debian, Ubuntu atau CentOS"
	exit
fi
color1='\e[031;1m'
color2='\e[34;1m'
color3='\e[0m'
echo "--------------- Selamat Datang Di Vps Anda Boss ---------------"
	echo ""
	cname=$( awk -F: '/model name/ {name=$2} END {print name}' /proc/cpuinfo )
	cores=$( awk -F: '/model name/ {core++} END {print core}' /proc/cpuinfo )
	freq=$( awk -F: ' /cpu MHz/ {freq=$2} END {print freq}' /proc/cpuinfo )
	tram=$( free -m | awk 'NR==2 {print $2}' )
	swap=$( free -m | awk 'NR==4 {print $2}' )
	up=$(uptime|awk '{ $1=$2=$(NF-6)=$(NF-5)=$(NF-4)=$(NF-3)=$(NF-2)=$(NF-1)=$NF=""; print }')

	echo -e "\e[032;1mCPU model:\e[0m $cname"
	echo -e "\e[032;1mNumber of cores:\e[0m $cores"
	echo -e "\e[032;1mCPU frequency:\e[0m $freq MHz"
	echo -e "\e[032;1mTotal amount of ram:\e[0m $tram MB"
	echo -e "\e[032;1mTotal amount of swap:\e[0m $swap MB"
	echo -e "\e[032;1mSystem uptime:\e[0m $up"
	echo -e "------------------------------------------------------------------------------"
	echo -e "Seputar SSH & OpenVPN"
 	echo -e "\e[034;1m 1\e[0m)" "\e[032;1mBuat akun SSH & OpenVPN\e[0m"
  echo -e "\e[034;1m 2e[0m)" "\e[032;1mGenerate akun SSH/OpenVPN\e[0m"
	echo -e "\e[034;1m 3e[0m)" "\e[032;1mBuat account trial untuk SSH & OpenVPN\e[0m"
	echo -e "\e[034;1m 4e[0m)" "\e[032;1mTambah masa aktif akun SSH & OpenVPN\e[0m"
	echo -e "\e[034;1m 5e[0m)" "\e[032;1mGanti password akun SSH/OpenVPN\e[0m"
	echo -e "\e[034;1m 6[0m)" "\e[032;1mBannned user yang melakukan multilogin\e[0m"
	echo -e "\e[034;1m 7[0m)" "\e[032;1mUnbanned user SSH & OpenVPN yang terbanned\e[0m"
	echo -e "\e[034;1m 8e[0m)" "\e[032;1mMengunci user SSH & OpenVPN\e[0m"
	echo -e "\e[034;1m 9e[0m)" "\e[032;1mMembuka user SSH & OpenVPN yang terkunci\e[0m"
	echo -e "\e[034;1m 10e[0m)" "\e[032;1mHapus Akun SSH & OpenVPN\e[0m"
	echo -e "\e[034;1m 11e[0m)" "\e[032;1mLihat detail user SSH & OpenVPN\e[0m"
	echo -e "\e[034;1m 12e[0m)" "\e[032;1mTampilkan daftar user SSH & OpenVPN\e[0m"
	echo -e "\e[034;1m 13e[0m)" "\e[032;1mCek login Dropbear, OpenSSH, dan OpenVPN\e[0m"
	echo -e "\e[034;1m 14e[0m)" "\e[032;1mLihat log login Dropbear & OpenSSH\e[0m"
	echo -e "\e[034;1m 15e[0m)" "\e[032;1mKill Multi Login\e[0m"
	echo -e "\e[034;1m 16e[0m)" "\e[032;1mTampilkan user yang akan expired dalam waktu dekat\e[0m"
	echo -e "\e[034;1m 17e[0m)" Tampilkan user yang telah expired (${color2}expireduser\e[0m"
	echo -e "\e[034;1m 18e[0m)" "\e[032;1mHapus user SSH & OpenVPN yang telah expired\e[0m"
	echo -e "\e[034;1m 19e[0m)" "\e[032;1mKunci user SSH & OpenVPN yang telah expired\e[0m"
	echo -e "\e[034;1m 20m)" "\e[032;1mLihat daftar user yang terkick\e[0m"
	echo -e "\e[034;1m 21e[0m)" "\e[032;1mLihat daftar user yang terbanned\e[0m"
	echo -e "\e[034;1m 22[0m)" "\e[032;1mBuat akun PPTP VPN\e[0m"
	echo -e "\e[034;1m 23[0m)" "\e[032;1mHapus akun PPTP VPN\e[0m"
	echo -e "\e[034;1m 24[0m)" "\e[032;1mLihat detail akun PPTP VPN\e[0m"
	echo -e "\e[034;1m 25[0m)" "\e[032;1mCek login PPTP VPN\e[0m"
	echo -e "\e[034;1m 26[0m)" "\e[032;1mLihat daftar user PPTP VPN\e[0m"
	echo -e "\e[034;1m 27[0m)" "\e[032;1mSpeedtest server\e[0m"
	echo -e "\e[034;1m 28[0m)" "\e[032;1mBenchmark server\e[0m"
	echo -e "\e[034;1m 29[0m)" "\e[032;1mLihat penggunaan RAM server\e[0m"
if [[ "$OS" = 'debian' ]]; then 
	echo -e "\e[034;1m 30[0m)" "\e[032;1mRestart OpenSSH\e[0m"
  echo -e "\e[034;1m 31[0m)" "\e[032;1mRestart Dropbear\e[0m"
	echo -e "\e[034;1m 32[0m)" "\e[032;1mRestart OpenVPN\e[0m"
	echo -e "\e[034;1m 33[0m)" "\e[032;1mRestart PPTP VPN\e[0m"
	echo -e "\e[034;1m 34[0m)" "\e[032;1mRestart Webmin\e[0m"
	echo -e "\e[034;1m 35[0m)" "\e[032;1mRestart Squid Proxy\e[0m"
else
	echo -e "\e[034;1m 36[0m)" "\e[032;1mRestart OpenSSH\e[0m"
	echo -e "\e[034;1m 37[0m)" "\e[032;1mRestart Dropbear\e[0m"
	echo -e "\e[034;1m 38[0m)" "\e[032;1mRestart OpenVPN\e[0m"
	echo -e "\e[034;1m 39[0m)" "\e[032;1mRestart PPTP VPN\e[0m"
	echo -e "\e[034;1m 40[0m)" "\e[032;1mRestart Webmin\e[0m"
	echo -e "\e[034;1m 41[0m)" "\e[032;1mRestart Squid Proxy\e[0m"
fi
echo -e "\e[034;1m 42[0m)" "\e[032;1mEdit Port Server\e[0m"
echo -e "\e[034;1m 43[0m)" "\e[032;1mSet auto reboot pada server\e[0m"
echo -e "\e[034;1m 44[0m)" "\e[032;1mReboot server\e[0m"
echo -e "\e[034;1m 45[0m)" "\e[032;1mGanti Password Server\e[0m"
echo -e "\e[034;1m 46[0m)" "\e[032;1mLihat log instalasi\e[0m"
echo -e "\e[034;1m 47[0m)" "\e[032;1mUpdate now"
echo "-------------------------------------------"
read -p "Tulis Pilihan Anda (angka): " x
if test $x -eq 1; then
user-add
elif test $x -eq 2; then
user-generate
elif test $x -eq 3; then
trial
elif test $x -eq 4; then
user-aktif
elif test $x -eq 5; then
user-password
elif test $x -eq 6; then
read -p "Isikan Jumlah Maximal Login (1-2): " MULTILOGIN
user-ban $MULTILOGIN
elif test $x -eq 7; then
user-unban
elif test $x -eq 8; then
user-lock
elif test $x -eq 9; then
user-unlock
elif test $x -eq 10; then
user-delete
elif test $x -eq 11; then
user-detail
elif test $x -eq 12; then
user-list
elif test $x -eq 13; then
user-login
elif test $x -eq 14; then
user-log
elif test $x -eq 15; then
read -p "Isikan Jumlah Maximal Login (1-2): " MULTILOGIN
user-limit $MULTILOGIN
elif test $x -eq 16; then
infouser
elif test $x -eq 17; then
expireduser
elif test $x -eq 18; then
user-delete-expired
elif test $x -eq 19; then
clear
echo "Script ini berjalan secara otomatis setiap jam 12 malam"
echo "Anda tidak perlu menjalankannya secara manual"
echo "Jika anda tetap ingin menjalankan script ini, ketik user-expire"
elif test $x -eq 20; then
log-limit
elif test $x -eq 21; then
log-ban
elif test $x -eq 22; then
user-add-pptp
elif test $x -eq 23; then
user-delete-pptp
elif test $x -eq 24; then
user-detail-pptp
elif test $x -eq 25; then
user-login-pptp
elif test $x -eq 26; then
alluser-pptp
elif test $x -eq 27; then
speedtest --share
elif test $x -eq 28; then
bench-network
elif test $x -eq 29; then
ram
elif test $x -eq 30; then
	if [[ "$OS" = 'debian' ]]; then 
		service ssh restart 
	else 
		service sshd restart 
	fi
elif test $x -eq 31; then
service dropbear restart
elif test $x -eq 32; then
service openvpn restart
elif test $x -eq 33; then
	if [[ "$OS" = 'debian' ]]; then 
		service pptpd restart 
	else 
		service pptpd restart 
	fi
elif test $x -eq 34; then
service webmin restart
elif test $x -eq 35; then
	if [[ "$OS" = 'debian' ]]; then 
		service squid3 restart 
	else 
		service squid restart 
	fi
elif test $x -eq 36; then
edit-port
elif test $x -eq 37; then
auto-reboot
elif test $x -eq 38; then
reboot
elif test $x -eq 39; then
passwd
elif test $x -eq 40; then
log-install
elif test $x -eq 41; then
wget
else
echo "Pilihan Tidak Terdapat Di Menu."
exit
fi
