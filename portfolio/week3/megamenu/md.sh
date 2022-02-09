#!/bin/bash

nc='\033[0m'
red='\033[0;31m'
green='\033[0;32m'

func_download_menu () {
	read -p "Please type a URL of a file to download or exit to quit:" menuOption
	
	case $menuOption in
		exit)
                      echo "quit"
		;;
		*)
			read -p "Type download location:" downloadLocation
			wget -P $downloadLocation $menuOption
			func_download_menu
		;;
	esac
}

func_download_menu

# use of 'wget' command addapted from :
# Linuxize (2020, Dec 10). Wget COmmand in Linux with Examples. https://linuxize.com/post/wget-command-examples/
