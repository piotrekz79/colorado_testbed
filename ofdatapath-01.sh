#!/bin/bash
#cpqd softswitch (with selected datapath id)
#sudo nice -n -10 ofdatapath --verbose=ANY:ANY:emer -i eth1,eth2 ptcp:6653

OFDATAPATH=/home/${USER}/ebpf/ofsoftswitch13/udatapath/ofdatapath
sudo nice -n -10 ${OFDATAPATH} --datapath-id=000000000001 --verbose=ANY:ANY:emer -i eth2,eth3 ptcp:6653

