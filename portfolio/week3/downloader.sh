#!/bin/bash

#Variables setting colour for text.
nc='\033[0m'
red='\033[0;31m'
green='\033[0;32m'

#Function for main menu of download script.
func_download_menu () {
	read -p "Please type a URL of a file to download or exit to quit:" menuOption
	
	case $menuOption in
		exit)
                	echo "quit"
			exit 0
		;;
		*)
			read -p "Type download location:" downloadLocation
			wget -P $downloadLocation $menuOption
			func_download_menu
		;;
	esac
}

#Main execution of script: executes the download menu function.
func_download_menu


# use of 'wget' command addapted from :
# Linuxize (2020, Dec 10). Wget COmmand in Linux with Examples. https://linuxize.com/post/wget-command-examples/
