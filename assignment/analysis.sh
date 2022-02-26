#!/bin/bash

#Variables for colour settings.

nc='\033[0m'
red='\033[0;31m'
blue='\033[0;34m'
green='\033[0;32m'
white='\033[1;37m'
purple='\033[0;35m'

#Global Variables.

var_startMessage="Welcome to the Cyber Security Alert Analysis Program."

#Start up of alert analysis program.

#This function prints the log in or creat an account menu.
func_start () {
	echo -e "\n\t   ${blue}$var_startMessage${nc}\n"
	echo -e "\t\tPlease select from the following options:"
	echo -e "\t\t\t${white}1) Log in.${nc}"
	echo -e "\t\t\t2) Create a new account."
	echo -e "\t\t\t${white}3) Quit.${nc}"

	read var_startOption

	case $var_startOption in
		1) echo -e "\t\tYou have selected to log in."
			func_logIn
		;;
		2) echo -e "\t\tYou have selected to creat a new account."
			func_createAccount
		;;
		3) echo -e "\n\t${green}Thank you for using the Cyber Security Alert Analysis Program.\n\t\t\tHave a nice Day.${nc}"
                        exit 0
                ;;
                *) echo -e "\n\t\t\t${red}Input is not valid.${nc}"
                        var_startMessage="\n\t\t\tPlease try again."
                        func_start
                ;;
	esac

}

#Function for creating a new account.
func_createAccount () {
	#Options for entering user name .
	echo -e "\n"
	read -p "To create an account please type in a user name:" userName
		echo "$userName" > userName.txt

	#Option for entering password
	read -s -p "Please type in a password:" userPassword

		#Checks if password is a secure password. If not, takes user back to start of creation.
		if ! [[ $(echo "$userPassword" | grep -P '(?=^.{8,}$)(?=.*\d)(?=.*[!@#$%^&*]+)(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$') ]]; then
			echo -e "\n\t\t${red}Password is not strong enough.${nc}"
			echo -e "\t\tPlease choose a password at least 8 characters long"
			echo -e "\t\twith at least one number, one capital, one lower case and one symbol."
			func_createAccount	
		else
			#Saves password as secure hash and changes permissions of password file to root.
			echo "$userPassword"  | sha256sum > userPassword.txt ; chmod +x userPassword.txt
			echo -e "\n\t\t${purple}You have just created an account for user:${nc} $userName."
			func_menu
		fi

}

#Function for logging in.
func_logIn () {

	echo -e "\t\tPlease type your user name:"
		read var_userCheck

		#variables for checking archived username and password.
		var_userArchive=$(cat userName.txt)
		var_passArchive=$(cat userPassword.txt)

		#Checking if user exists.
		if [[ "$var_userArchive" = "$var_userCheck" ]]; then
                        echo -e "\t\tPlease type your password:"
                        read -s var_passCheckPlain
				
				#Checking if password matches.
				var_passCheckSha=$(echo "$var_passCheckPlain" | sha256sum)
				if [[ "$var_passCheckSha" = "$var_passArchive" ]]; then
					echo -e "\n\t\t${green}Log in successful!${nc}"
					func_menu
				else
					var_startMessage="\t${red}Password was incorrect. Please try again."
					func_start
				fi
                else
			var_startMessage="${red}\tUser Name not found. Please try again."
			func_start
		fi

}

#Function for main menu.
func_menu () {

	#Prints main menu options.
	echo -e "\t\t\t${blue}Welcome to the Alert Analysis Main Menu.${nc}"
	echo -e "\n\t\tPlease type a number from the following selection:"
	echo -e "\t\t\t${white}1) Trend of Alerts.${nc}"
	echo -e "\t\t\t2) Threats of Alerts."
	echo -e "\t\t\t${white}3) Quit.${nc}"
	read var_menuOption

	#Takes user to desired path.
	case  $var_menuOption in
		1) cat data/trend.txt
			func_menu
		;;
		2) cat data/threat.txt
			func_menu
		;;
		3) echo -e "\n\t${green}Thank you for using the Cyber Security Alert Analysis Program.\n\t\t\tHave a nice Day.${nc}"
                        exit 0
                ;;
                *) echo -e "\n\t\t\t${red}Input is not valid.${nc}"
                        func_menu
                ;;
	esac 



}

#Main executable script.
func_start
