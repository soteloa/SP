#!/bin/bash
# Student Soteloa
# Script: Creating Directories and Files
#Change Ownership of /data
echo "How many files would you like to create?"
read fn
#fn=100
FILE=""
DIR="$1"
# look for empty dir
if [ -d "$DIR" ]
then
	if [ "$(ls -A $DIR)" ]; then
     echo "Take action $DIR is not Empty"
	else
    echo "$DIR is Empty"
	fi
else
	echo "Directory $DIR not found."
fi
sudo chown $(whoami):$(whoami) -R /data
#Making DataFiles Directory
mkdir -p /data/DataFiles
#Creating a file named data.log
touch /data/data.log
#Add name to data.log

echo $(id) > /data/data.log
#Creating fn files with the size on 10MB

for i in $(seq 0 $fn)
        do
                dd if=/dev/zero of=/data/DataFiles/datafile$i bs=1M count=10
        done
echo "Done"
