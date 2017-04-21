#!/bin/bash
### ubpf
sudo apt-get install make -y
cd ~/ebpf
git clone https://github.com/piotrekz79/ubpf.git
cd ubpf
make -C vm
