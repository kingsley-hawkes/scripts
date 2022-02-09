#!/bin/bash

echo "*** Welcome to Password Checker! ***"
echo "Please choose an option:"
echo "1. Sign in."
echo "2. Register a new account."
read answer_var

if [ "$answer_var" = 1 ]; then
	echo "Please enter password."
	read -s secret_password
elif [ "$answer_var" = 2 ]; then
	./setPassword.sh
	exit
fi

checking_password=$(echo $secret_password | sha256sum) 
stored_password=$(cat secret.txt)


if [ "$checking_password" = "$stored_password" ]; then
	echo "Access Granted!"
	exit 0
else
	echo "Access Denied!"
	exit 1
fi

