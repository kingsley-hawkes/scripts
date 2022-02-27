#!/bin/bash


#Variables for colour settings.

nc='\033[0m'
red='\033[0;31m'
blue='\033[0;34m'
green='\033[0;32m'
white='\033[1;37m'
purple='\033[0;35m'

#Variables for text settings.

#blink='\033[7m'

#check for signed in.
#if [ "$signedIn" ]; then
#	exit 0
#else
#	./mpc.sh
#fi

#Main menu options. 
if [ $? = 0 ]; then
	echo -e "Enter the ${green}number${nc} of the \e[5moption\e[0m you wish to select."
        echo "1. Create a folder."
	echo -e "${lightgrey}2. Copy a folder.${nc}"
	echo "3. Set a password."
	echo -e "${lightgrey}4. Calculator.${nc}"
	echo "5. Create Week Folders."
	echo -e "${lightgrey}6. Check File Names.${nc}"
	echo "7. Download a file."
	echo -e "${red}8. Exit.${nc}"
	read menu_option
elif [ $? = 1 ]; then
        echo "Password does not match!"
	exit
fi

#Script that directs to chosen option.
case $menu_option in

	1)
		cd ~/scripts/portfolio/week3/megamenu/ && ./mfm.sh
	;;
	
	2)
		cd ~/scripts/portfolio/week3/megamenu/ && ./mfc.sh
	;;

	3)
		cd ~/scripts/portfolio/week3/megamenu/ && ./msp.sh

	;;
	4)
                cd ~/scripts/portfolio/week3/megamenu/ && ./mc.sh

        ;;
	5)
                echo "Under Development." #cd ~/scripts/portfolio/week3/megamenu/ && ./mmfm.sh

        ;;
	6)
                cd ~/scripts/portfolio/week3/megamenu && ./mfn.sh

        ;;
	7)
                cd ~/scripts/portfolio/week3/megamenu && ./md.sh

        ;;
	8)
		echo -e "Thank you for using Mega Menu!"
		signedIn=false
		exit 0
	;;
	*)
		echo "Input invalid. Please enter a number."
	;;
esac


exit 0 

#  calling script 'path' and then executing script after using '&&' was taken from:
# AnonymousX. (2018, Jun 3). Running scripts from another directory. https://superuser.com/questions/510152/running-scripts-from-another-directory

# Case statement structure addapted from website 'Linuxize.' (2019, Nov 22). Bash Case Statement. https://linuxize.com/post/bash-case-statement/
