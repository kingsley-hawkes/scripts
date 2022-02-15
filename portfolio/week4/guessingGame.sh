#!/bin/bash 
      
#This function prints a given error 
      
printError() 
      
{ 
      
    echo -e "\033[31mERROR:\033[0m $1" 
      
} 
      
 
      
#This function will get a value between the 2nd and 3rd arguments 
      
guessNumber () 
      
{ 
      
    read -p "$1: " 
      
    while (( $REPLY < $2 || $REPLY> $3 )); do 
      
        printError "Input must be between $2 and $3" 
      
        read -p "$1: " 
      
    done 
}


# Main script
 while [[ $REPLY -ne 42 ]]; do
	

guessNumber "please type a number between 1 and 100" 1 100
	

    if [[ $REPLY -eq 42 ]]; then
	

        echo "That's right!"
	

    elif [[ $REPLY -gt 42 ]]; then
	

        echo "Too high!"
	

    else
	

        echo "Too low!"
	

    fi
	

done 

# Trail script
#while [ $1 -ne 42 ]; do
#	echo -e "This is a guessing game!\nTry to guess the secret number!?"
#	guessNumber "Please type a number between 1 and 100" 1 100
#
#	if [ $1 -eq 42 ]; then
#		echo "That's right!"
#       elif [ $1 -lt 42 ]; then
#                echo "Too low!"
#        elif [ $REPLY -gt 42 ]; then
#                echo "Too high!"
#	fi
#
#done

echo 'Thank you!"
exit 0
