#!/bin/bash


### modified softswitch


cd
cd ebpf
git clone https://github.com/piotrekz79/ofsoftswitch13.git
cd ofsoftswitch13
./boot.sh
./configure
make
sudo make install


#new term

#cd ~/ebpf/ofsoftswitch13 #not needed if we did sudo make install ofsoft
#sudo ofprotocol tcp:localhost:6653 tcp:localhost:6633
#new term
#sudo ofdatapath -i eth1,eth2 ptcp:6653

##client
#nfd-status to see facenum of eth
#nfdc register /tno 256 

##server
#ndnpingserver ndn:/tno

##client
#ndnping /tno/ping
