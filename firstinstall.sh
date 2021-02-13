#!/bin/bash
sudo apt update -y
sudo apt upgrade -y
sudo apt update -y
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.36.0/install.sh | bash
source ~/.profile
nvm install node
sudo apt install -y dialog curl at git npm build-essential php php-exif php-gd php-mbstring php-curl php-mysqli php-json php-dom php-fpm python python2.7 python3-pip build-essential zip unzip unp unrar unrar-free unar p7zip dos2unix
curl https://bootstrap.pypa.io/get-pip.py --output get-pip.py
sudo python2 get-pip.py
pip3 install requests selenium colorama bs4 wget pyfiglet
pip2 install requests selenium colorama bs4 wget pyfiglet
systemctl start atd
sudo apt install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common docker docker.io docker-compose
sudo adduser codeserver
sudo wget https://raw.githubusercontent.com/gvoze32/code-server-docker-deploy/master/docker-compose.yml -O /home/codeserver/docker-compose.yml
echo "blank" >> /home/codeserver/.env
curl -O https://downloads.ioncube.com/loader_downloads/ioncube_loaders_lin_x86-64.tar.gz
tar -xvzf ioncube_loaders_lin_x86-64.tar.gz
rm ioncube_loaders_lin_x86-64.tar.gz
cd ioncube
php_ext_dir="$(command php -i | grep extension_dir 2>'/dev/null' \
    | command head -n 1 \
    | command cut --characters=31-38)"
php_version="$(command php --version 2>'/dev/null' \
    | command head -n 1 \
    | command cut --characters=5-7)"
cp ioncube_loader_lin_${php_version}.so /usr/lib/php/${php_ext_dir}
cd ..
rm -rf ioncube
cat > /etc/php/${php_version}/cli/conf.d/00-ioncube-loader.ini << EOF
zend_extension=ioncube_loader_lin_${php_version}.so
EOF
php -v
