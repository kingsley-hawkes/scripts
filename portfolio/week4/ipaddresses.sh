#!/bin/bash

#calling another script and storing it as avariable.
info=$(./ipinfo.sh)

#script that matches the ip addresses of ipinfo.sh script and only prints these to screen.
address=$(echo "$info" | 

sed -n -e '/IP Address: [0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}/p;')

echo -e "The IP Addresses in this computer are:\n$address" 
