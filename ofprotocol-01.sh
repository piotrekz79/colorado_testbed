#!/bin/bash
SW_IP=A.B.C.D
CTRL_IP=134.221.121.35


#sudo ofprotocol tcp:${SW_IP}:6653 tcp:${CTRL_IP}:6633

OFPROTOCOL=/home/${USER}/ebpf/ofsoftswitch13/secchan/ofprotocol
sudo ${OFPROTOCOL} tcp:${SW_IP}:6653 tcp:${CTRL_IP}:6633
#sudo ofprotocol tcp:${CTRL_IP}:6633
