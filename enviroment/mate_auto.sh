#====================================================================
# desktop-enviroment
#====================================================================
yes | sudo apt install -y ubuntu-mate-desktop
yes | sudo apt install -y mate-desktop-environment
yes | sudo apt install -y mate-desktop-environment-extra

#====================================================================
# kye-board settiing
#====================================================================
yes | sudo apt-get -y install language-pack-ja-base language-pack-ja ibus-mozc
cd /etc/xrdp
wget http://www.mail-archive.com/xrdp-devel@lists.sourceforge.net/msg00263/km-e0010411.ini
yes | sudo chmod 644 km-0411.ini
yes | sudo ln -s km-0411.ini km-e0010411.ini
yes | sudo ln -s km-0411.ini km-e0200411.ini
yes | sudo ln -s km-0411.ini km-e0210411.ini
yes | sudo /etc/init.d/xrdp restart
yes | sudo update-locale LANG=ja_JP.UTF-8 LANGUAGE="ja_JP:ja"
yes | sudo source /etc/default/locale
#====================================================================
# remote-setting
#====================================================================
yes | sudo apt install -y xrdp
cat<<EOF > ~/.xsession
 export GTX_IM_MODULE=ibus
 export QT_IM_MODULE=ibus
 export XMODIFIERS="@im=ibus"
 ibus-daemon -rdx
 mate-session
EOF
yes | sudo reboot
