#wget https://github.com/${GitUser}/
GitUser="isohmaohot"
curl https://rclone.org/install.sh | bash
printf "q\n" | rclone config
wget -O /root/.config/rclone/rclone.conf "https://raw.githubusercontent.com/${GitUser}/drgvpnscript/main/rclone.conf"
git clone  https://github.com/magnific0/wondershaper.git
cd wondershaper
make install
cd
rm -rf wondershaper
cd /usr/bin
wget -O autobackup "https://raw.githubusercontent.com/${GitUser}/drgvpnscript/main/system/autobackup.sh"
wget -O backup "https://raw.githubusercontent.com/${GitUser}/drgvpnscript/main/system/backup.sh"
wget -O bckp "https://raw.githubusercontent.com/${GitUser}/drgvpnscript/main/system/bckp.sh"
wget -O restore "https://raw.githubusercontent.com/${GitUser}/drgvpnscript/main/system/restore.sh"
wget -O running "https://raw.githubusercontent.com/${GitUser}/drgvpnscript/main/system/running.sh"
wget -O limit-speed "https://raw.githubusercontent.com/${GitUser}/drgvpnscript/main/limit-speed.sh"
chmod +x autobackup
chmod +x backup
chmod +x bckp
chmod +x restore
chmod +x running
chmod +x limit-speed
chmod +x clear-log
cd
rm -f /root/set-br.sh
