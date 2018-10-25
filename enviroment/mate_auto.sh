PW = $(openssl rsautl -decrypt -inkey ~/.ssh/id_rsa -in password.rsa)
sudo su
expect -c  "
set timeout 10
spawn sudo reboot
expect \"password for ubuntu:\"
send \"${PW}\n\"
exit 0
"
apt install -y ubuntu-mate-desktop
apt install -y mate-desktop-environment
apt install -y mate-desktop-environment-extra
apt-get -y install language-pack-ja-base language-pack-ja ibus-mozc
cd /etc/xrdp
chmod 644 km-0411.ini
ln -s km-0411.ini km-e0010411.ini
ln -s km-0411.ini km-e0200411.ini 
ln -s km-0411.ini km-e0210411.ini
/etc/init.d/xrdp restart
reboot

