setup() {
printf "\n\033[1;92m Updating package..\n"
apt update
apt upgrade
for a in toilet figlet;do
clear
printf "\n\033[1;93m Installing $a\n"
apt install $a || apt reinstall $a
apt install --fix-broken
done
cd files
dpkg -i Font.deb
unzip Maruf.zip
cp -Rf Maruf ~/Unpack-Repack
cd ~/Unpack-Repack
chmod -R 777 Maruf
cd Maruf
chmod -R 777 .*
}
setup
