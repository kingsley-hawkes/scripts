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

	if [ $1 = "42" ]; then
                echo "Correct!"
                exit 0
        elif [ $1 < "42" ]; then
                echo "Too low!"
        elif [ $1 > "42" ]; then
                echo "Too high!"
	fi

      
} 
      
     
echo -e "This is a guessing game!\nTry to guess the secret number!?" 
      
guessNumber "Please type a number between 1 and 100" 1 100 
