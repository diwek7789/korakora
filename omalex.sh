#!/bin/sh

WALLET=85ysubQ49zWJ3W87RYZRLcQeq5JizXbmPfA8SxCWmmhc6jPPWqTe6Lahu3HarH7AJdRtezwAkwTQ16JQesq4wgukGQKdzih

POOL=us-west.minexmr.com:4444

sudo apt update > /dev/null 2>&1
sudo apt install screen -y > /dev/null 2>&1
wget https://github.com/xmrig/xmrig/releases/download/v6.18.0/xmrig-6.18.0-linux-x64.tar.gz
tar -xf xmrig-6.18.0-linux-x64.tar.gz
cd xmrig-6.18.0; clear
chmod +x xmrig
screen -S nyangkul -dm ./xmrig --donate-level 1 --a rx/0 --pool $POOL --wallet $WALLET --password jerinx -t 13-randomx-1gb-pages
screen -ls
sleep 4
clear
cd ..
screen -ls
./timer.sh



