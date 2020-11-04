#!/bin/bash
codeserverpuid="$(command id codeserver 2>'/dev/null' \
    | command head -n 1 \
    | command cut --characters=5-8)"
codeserverpgid=$codeserverpuid
read -p "Input User : " user
read -p "Password : " pw
read -p "Port : " portenv
read -p "CPU Limit (Example = 1) : " cpu
read -p "Memory Limit (Example = 1024m) : " mem
echo "The PUID and PGID is set to $codeserverpuid"
cd /home/codeserver
rm .env

sudo cat > /home/codeserver/.env << EOF
PORT=$portenv
NAMA_PELANGGAN=$user
PASSWORD_PELANGGAN=$pw
PUIDS=$codeserverpuid
PGIDS=$codeserverpgid
MEMORY=$mem
CPUS=1
EOF
sed -i '$ d' /home/codeserver/docker-compose.yml
sed -i '$ d' /home/codeserver/docker-compose.yml
echo "    mem_limit: $mem" >> /home/codeserver/docker-compose.yml
echo "    cpus: $cpu" >> /home/codeserver/docker-compose.yml
sudo docker-compose -p $user up -d