#!/bin/bash

info=$(./ipinfo.sh)

address=$(echo "$info" | 

sed -n -e '/IP Address: [0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}/p;')

echo -e "The IP Addresses in this computer are:\n$address" 
