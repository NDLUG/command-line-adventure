#!/bin/sh

./scrunch.sh GUIDE >| GUIDE.SCRUNCHED

for i in $(seq 0 9); do
    ii=$(printf "%02d" $i)
    sudo rm -frv /home/lug$ii/GUIDE* \
		 /home/lug$ii/LOG* \
		 /home/lug$ii/CLA* \
		 /home/lug$ii/linux*
    sudo install -v -o lug$ii -g lug$ii -m 644 GUIDE.SCRUNCHED /home/lug$ii/GUIDE

    if ! grep -q GUIDE /home/lug$ii/.bashrc; then
    	echo sh '~/GUIDE' | sudo tee -a /home/lug$ii/.bashrc
    fi
done
