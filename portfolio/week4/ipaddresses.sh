#!/bin/bash 
      
#get info about networking from the ifconfig command 
      
net_info="$(ifconfig)" 
      
#parse out the ip address lines using sed 
      
addresses=$(echo "$net_info" | sed -n '/inet / { 
      
s/inet/IP Address:/ 
      
s/netmask/\n\t\tSubnet Mask:/ 
      
s/broadcast/\n\t\tBroadcast Address:/ 
      
p
   
}') 

#pipe printed output into another sed command which will match ip address and only print that and not subnet and broadcast.
| sed -n -e '/IP Address: [0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}/p;'
# code for matching ip addresses addapted from M. Perryman (2017).
      
#format output 
      
echo -e "IP addresses on this computer are:\n$addresses" 
     
# Perryman, Mark. (2017, Jan 26). Answer 1. Sed: Replace ANY IP address with 127.0.0.1 [duplicate]. Unix & Linux. https://unix.stackexchange.com/questions/340347/sed-replace-any-ip-address-with-127-0-0-1
