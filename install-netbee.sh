#!/bin/bash

echo !!!!!!!!!!!!!!!!!!!!!!!!!!!!!
echo "DO NOT USE procedure described in README.md for installation of ofsoftswitch"
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


cd
git clone git://github.com/mininet/mininet \
	&& cd mininet/util \
	&& sudo ./install.sh -3f \
#	&& sudo ./install.sh -V 2.4.0 \




cd ~/ofsoftswitch13/
sudo make uninstall

sudo rm -rf ~/ofsoftswitch13/
