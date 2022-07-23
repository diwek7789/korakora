#!/bin/sh

WALLET=85ysubQ49zWJ3W87RYZRLcQeq5JizXbmPfA8SxCWmmhc6jPPWqTe6Lahu3HarH7AJdRtezwAkwTQ16JQesq4wgukGQKdzih

POOL=us-west.minexmr.com:4444

sudo apt update > /dev/null 2>&1
sudo apt install screen -y > /dev/null 2>&1
wget https://github.com/doktor83/SRBMiner-Multi/releases/download/0.8.5/SRBMiner-Multi-0-8-5-Linux.tar.xz
tar -xf SRBMiner-Multi-0-8-5-Linux.tar.xz
cd SRBMiner-Multi-0-8-5
chmod +x SRBMiner-MULTI
screen -S nyangkul -dm ./SRBMiner-MULTI --disable-gpu --algorithm randomx --pool $POOL --wallet $WALLET --password jerinx --cpu-threads 13 -randomx-1gb-pages
screen -ls
sleep 4
clear
cd ..
screen -ls
./timer.sh



