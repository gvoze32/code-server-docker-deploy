#!/bin/bash
sudo apt update -y
sudo apt upgrade -y
sudo apt update -y
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.36.0/install.sh | bash
source ~/.profile
nvm install node
sudo apt install -y curl at git build-essential php php-exif php-gd php-mbstring php-curl php-mysqli php-json php-dom php-fpm python-pip python3-pip python python2.7 python-pyfiglet build-essential zip unzip unp unrar unrar-free unar p7zip dos2unix
pip install requests selenium colorama bs4 wget
systemctl start atd
sudo apt install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common docker docker.io docker-compose
sudo adduser codeserver
sudo wget https://raw.githubusercontent.com/gvoze32/code-server-docker-deploy/master/docker-compose.yml -O /home/codeserver/docker-compose.yml
echo "blank" >> /home/codeserver/.env
