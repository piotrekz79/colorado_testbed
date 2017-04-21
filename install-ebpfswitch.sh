#!/bin/bash


### softswitch
cd
git clone git://github.com/mininet/mininet \
	&& cd mininet/util \
	&& sudo ./install.sh -3f \
#	&& sudo ./install.sh -V 2.4.0 \



echo !!!!!!!!!!!!!!!!!!!!!!!!!!!!!
echo "DO NOT USE procedure described in README.md for installation"
echo "if running ubuntu 14.04 or later"
echo "this is because netbee in version from 2005 is needed"
echo "instead it is better to use new (2.2.1+) mininet and"
echo "use install.sh -3f in the mininet folder, then \"sudo make uninstall\"" 
echo "in ofsoftswitch got from miniet in ~/ofsoftswitch13/"
echo "and proceed with installation in the readme located in ~/ofsoftswitch13/ doing:"
echo "$ ./boot.sh"
echo "$ ./configure"
echo "$ make"
echo "$ sudo make install"

cd ~/ofsoftswitch13/
sudo make uninstall

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
