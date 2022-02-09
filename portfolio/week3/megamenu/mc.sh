#!/bin/bash

nc='\033[0m'
red='\033[0;31m'
blue='\033[0;34m'
green='\033[0;32m'
purple='\033[0;35m'

endMenuOption="continue on calculator"
endMenuScript="mc.sh"

func_endMenu () {

        echo -e "\n1. Would you like to $endMenuOption?"
        echo -e "2. Return to main menu?"
        echo -e "3. Exit?"
        read -s endMenuChoice

        case $endMenuChoice in

        1)
                ./$endMenuScript
        ;;
        3)
                echo -e "Thank you for using Mega Menu!"
                signedIn=false
                exit 0
        ;;
        2)
                signedIn=true
                ./megamenu.sh
        ;;
        *)
                echo "Invalid input"
                func_endMenu
        ;;
esac

}


func_add () {

	read -p "Enter first number:" num1
	read -p "Enter second number:" num2
	
	sumAnswer=$(echo "$num1+$num2" | bc)


	echo -e "The answer is:${blue}$sumAnswer${nc}."
	func_endMenu

}

func_sub () {

        read -p "Enter first number:" num1
        read -p "Enter second number:" num2

        sumAnswer=$(echo "$num1-$num2" | bc)


        echo -e "The answer is: ${green}$sumAnswer${nc}."
	func_endMenu

}

func_mul () {

        read -p "Enter first number:" num1
        read -p "Enter second number:" num2

        sumAnswer=$(echo "$num1*$num2" | bc)


        echo -e "The answer is: ${red}$sumAnswer${nc}."
	func_endMenu

}

func_div () {

        read -p "Enter first number:" num1
        read -p "Enter second number:" num2

        sumAnswer=$(echo "$num1/$num2" | bc)


        echo -e "The answer is: ${purple}$sumAnswer${nc}."
	func_endMenu
}

func_menu () {

echo "Welcome to the simple calculator."
echo "Please enter an option:"
echo -e "1. ${blue}Add${nc}."
echo -e "2. ${green}Subtract${nc}."
echo -e "3. ${red}Multiply${nc}."
echo -e "4. ${purple}Divide${nc}."
echo -e "\n5. ${green}R${nc} to main menu."

read -s simpleSum



case $simpleSum in

	1)
		func_add
	;;
	2)
		func_sub
	;;
	3)
		func_mul
	;;
	4)
		func_div
	;;
	5)
		./megamenu.sh
	;;
	r)
		./megamenu.sh
	;;
	*)
		echo "You did not choose a valid option."
		func_menu
	;;
esac

}

func_menu
