#!/bin/bash
# Student Soteloa
# Script: Creating Directories and Files with prompt
#Change Ownership of /data
sudo chown $(whoami):$(whoami) -R /data

mkdir -p /data/DataFiles3
echo How many files do you want to create?
read numberOfFiles
echo
echo Please enter the file name:
read nameForFiles
echo

for i in $(seq 1 $numberOfFiles)
        do
                dd if=/dev/zero of=/data/DataFiles3/$nameForFiles$i bs=1M count=1
        done
echo "Done :)"
