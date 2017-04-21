#!/bin/bash
### ubpf
cd ~/ebpf
git clone https://github.com/piotrekz79/ubpf.git
cd ubpf
make -C vm
