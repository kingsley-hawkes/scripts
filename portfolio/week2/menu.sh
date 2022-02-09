#!/bin/bash

./passwordCheck.sh


if [ $? = 0 ]; then
	echo "Enter the number of the option you wish to select."
        echo "1. Create a folder."
	echo "2. Copy a folder."
	echo "3. Set a password."
	read menu_option
elif [ $? = 1 ]; then
        echo "Password does not match!"
	exit
fi

case $menu_option in

	1)
		cd ~/bashscripts/ && ./foldermaker.sh
	;;
	
	2)
		cd ~/bashscripts/portfolio/ && ./foldercopier.sh
	;;

	3)
		cd ~/bashscripts/portfolio/week2/ && ./setPassword.sh

	;;

	*)
		echo "Input invalid. Please enter a number."
	;;
esac


exit 0 

#  calling script 'path' and then exicuting script after using '&&' was taken from:
# AnonymousX. (2018, Jun 3). Running scripts from another directory. https://superuser.com/questions/510152/running-scripts-from-another-directory

# Case statement structure addapted from website 'Linuxize.' (2019, Nov 22). Bash Case Statement. https://linuxize.com/post/bash-case-statement/
