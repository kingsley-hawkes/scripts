#!/bin/bash

#Variables for coloured text.
nc='\033[0m'
red='\033[0;31m'
blue='\033[0;34m'
green='\033[0;32m'
purple='\033[0;35m'


#Function for addition sums.
func_add () {

	read -p "Enter first number:" num1
	read -p "Enter second number:" num2
	
	sumAnswer=$(echo "$num1+$num2" | bc)


	echo -e "The answer is:${blue}$sumAnswer${nc}."
	func_exit

}

#Function for subtration sums.
func_sub () {

        read -p "Enter first number:" num1
        read -p "Enter second number:" num2

        sumAnswer=$(echo "$num1-$num2" | bc)


        echo -e "The answer is: ${green}$sumAnswer${nc}."
	func_exit

}

#Function for multiplication sums.
func_mul () {

        read -p "Enter first number:" num1
        read -p "Enter second number:" num2

        sumAnswer=$(echo "$num1*$num2" | bc)


        echo -e "The answer is: ${red}$sumAnswer${nc}."
	func_exit

}

#Function for division sums.
func_div () {

        read -p "Enter first number:" num1
        read -p "Enter second number:" num2

        sumAnswer=$(echo "$num1/$num2" | bc)


        echo -e "The answer is: ${purple}$sumAnswer${nc}."
	func_exit

}

#Function for the main menu of the calculator.
func_menu () {

echo "Welcome to the simple calculator."
echo "Please enter an option:"
echo -e "1. ${blue}Add${nc}."
echo -e "2. ${green}Subtract${nc}."
echo -e "3. ${red}Multiply${nc}."
echo -e "4. ${purple}Divide${nc}."

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
	*)
		echo "You did not choose a valid option."
		func_menu
	;;
esac

}

#Function for exiting or continuing menu.
func_exit () {

echo -e "Would you like to ${blue}c${nc}ontinue or e${red}x${nc}it?"
read simpleChoice

case $simpleChoice in

	c)
		func_menu
	;;
	x)
		exit 0
	;;
	*)
		echo "Invalid input"
		func_exit
	;;
esac
 
}

# Main executing function.
func_menu
