#!/bin/bash

#Variable setting the path of which text file to read.
file=~/bashscripts/portfolio/week3/filenames.txt


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

# Use of while loop to read line script was taken from:
# Linuxize. (2020, Feb 24). Bash while Loop. Read a File Line by Line. https://linuxize.com/post/bash-while-loop/
