PW=$(openssl rsautl -decrypt -inkey ~/.ssh/id_rsa -in password.rsa)
yes | sudo apt install -y ubuntu-mate-desktop
yes | sudo apt install -y mate-desktop-environment
yes | sudo apt install -y mate-desktop-environment-extra
yes | sudo apt-get -y install language-pack-ja-base language-pack-ja ibus-mozc
cd /etc/xrdp
yes | sudo chmod 644 km-0411.ini
yes | sudo ln -s km-0411.ini km-e0010411.ini
yes | sudo ln -s km-0411.ini km-e0200411.ini
yes | sudo ln -s km-0411.ini km-e0210411.ini
yes | sudo /etc/init.d/xrdp restart
yes | sudo reboot
