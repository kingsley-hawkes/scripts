#!/bin/bash

echo "*** Welcome to The Mega Menu! ***"
echo "Please choose an option:"
echo "1. Sign in."
echo "2. Register a new account."
#echo "3. Exit."
read menuOption

case $menuOption in
	1)
		echo "Please enter password."
		read -s secret_password
	;;
	2)
		./msp.sh
	;;
#	3)
#		echo -e "Thank you for using Mega Menu."
#		exit 0
#	;;
	
esac

checking_password=$(echo $secret_password | sha256sum) 
stored_password=$(cat secret.txt)


if [ "$checking_password" = "$stored_password" ]; then
	echo "Access Granted!"
	signedIn=true
	exit 0
else
	echo "Access Denied!"
	exit 1
fi

