#!/bin/bash
# Student Soteloa
# Script: Creating Directories and Files
#Change Ownership of /data
echo "Setting Directory Permissions"
sudo chown $(whoami):$(whoami) -R /data
#Making DataFiles Directory
echo "Making Directory DataFiles2.0"
mkdir -p /data/DataFiles2.0
#Creating 10 files with the size on 10MB
echo "Creating 10 files"
for i in $(seq 10 19)
        do
                dd if=/dev/zero of=/data/DataFiles2.0/datafile$i bs=1M count=10
        done
echo "Done :)"
