##########################################################################
# File Name: install-all.sh
# Author: Sereyna
# mail: yhsgusx26@163.com
# Created Time: 2020年04月24日 星期五 20时08分13秒
#########################################################################
#!/bin/bash

# 
chrome="google-chrome-stable_current_amd64.deb"
sogou="sogoupinyin_2.3.1.0112_amd64.deb"

# update
sudo apt-get update

# mount
sudo mkdir /media/Cause
sudo mkdir /media/Program
sudo mkdir /media/Code
sudo mkdir /media/Other
sudo echo "/dev/sdb2 /media/Cause ntfs defaults 0 0" >> /etc/fstab
sudo echo "/dev/sdb5 /media/Code ntfs defaults 0 0" >> /etc/fstab
sudo echo "/dev/sdb6 /media/Program ntfs defaults 0 0" >> /etc/fstab
sudo echo "/dev/sdb7 /media/Other ntfs defaults 0 0" >> /etc/fstab

# git
sudo apt-get install -y git

# chrome
sudo dpkg -i $chrome

# terminator
sudo apt-get install -y terminator

# sogou
sudo dpkg -i $sogou
sudo apt-get -f install

