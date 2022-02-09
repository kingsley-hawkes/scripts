#!/bin/bash

#Function and variables for the end menu of calculator connecting to megamenu.
endMenuOption="scan another file"
endMenuScript="mfn.sh"

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



#Variable setting the path of which text file to read.
textFile="filenames.txt"
file=~/bashscripts/portfolio/week3/$textFile



#Main body of script: reads each line of a text file.
while read -r line; do
	
	if [[ ! -z $line ]]; then		#'-z' searches for blank lines'
		if [ -f "$line" ]; then		#'-f' searches for files.
			echo "this is a file."
		elif [ -d "$line" ]; then	#'-d' searches for directories.
			echo "this is a file."
		else  
			echo "I don't know what this is."
		fi
	fi

#	case $line in
#		-f)
#			echo "This is a file."
#		;;
#		-d)
#			echo "This is a directory."
#		;;
#		*)
#			echo "I don't know what this is?"
#		;;
#	esac

done < "$file"

func_endMenu

# Use of while loop to read line script was taken from:
# Linuxize. (2020, Feb 24). Bash while Loop. Read a File Line by Line. https://linuxize.com/post/bash-while-loop/
