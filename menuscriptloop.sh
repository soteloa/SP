#!/bin/bash

#This script will execute a menu
clear
echo "Hello, This script will talk to you"
echo "=]"

until [ "$ans" = 3 ]
        do
        echo "Please select the following one of the following options:"
        echo "enter 1 - Say Hello"
        echo "enter 2 - Say Goodbye"
        echo "enter 3 - Exit the Script"
        read -p "Please make a select " ans

        echo "you selected $ans"



        case $ans in
                1) echo "Hello";;
                2) echo "Goodbye";;
                3) echo "Thank you for using this script";;
        esac
done
