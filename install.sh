#!/bin/bash

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install git jq curl mc -y

cd /root/
[ -d scripts ] || mkdir scripts
[ -d logs ] || mkdir logs
[ -d ~/scripts/ex ] && rm -r ~/scripts/ex

cd scripts
git clone https://github.com/Motko222/ant repo
cd repo
chmod +x *.sh

cd /usr/local/bin
echo "bash /root/scripts/repo/ant.sh "\$"1 "\$"2" > ant 
chmod +x ant

echo "------------------------"
echo "Installation done. Run 'ant' to open client."
