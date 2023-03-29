#!/bin/bash
# Student Soteloa
# Script: Creating Directories and Files
#Change Ownership of /data
echo "Setting Directory Permissions"
sudo chown $(whoami):$(whoami) -R /data
#Making DataFiles Directory
echo "Making Directory DataFiles"
mkdir -p /data/DataFiles
#Creating a file named data.log
echo "Creating /data/data.log"
touch /data/data.log
#Add name to data.log
echo "Adding name to Data.log"
echo $(id) > /data/data.log
#Creating 5 files with the size on 10MB
echo "Creating 5 files"
for i in $(seq 0 4)
        do
                dd if=/dev/zero of=/data/DataFiles/datafile$i bs=1M count=10
        done
echo "Done :)"
