#!/bin/bash 

read -p "Enter the site : " site 

ping -c 1 $site > conn.txt 

sleep 2s 

if [[ $? -eq 0 ]]
then
    echo "connected to $site succesfully"
    cat conn.txt | grep "packet loss"
    rm conn.txt
else 
    echo "failed to connect"
fi 