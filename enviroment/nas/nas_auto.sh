#====================================================================
# install
#====================================================================
yes | sudo apt-get install cifs-utils
yes | sudo apt-get upgrade
yes | sudo apt-get install samba
#====================================================================
# Environmental setting
#====================================================================
yes | sudo mkdir /home/share
yes | sudo chmod 777 /home/share
yes | sudo cp smb.conf /etc/samba
yes | sudo systemctl restart smbd
