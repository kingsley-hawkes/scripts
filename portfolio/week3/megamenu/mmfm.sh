#!/bin/bash 

endMenuOption="utilize mega folder maker again"
endMenuScript="mmfm.sh"

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

#Add two arguments for the script.
read -p "Type in two numbers:" 1 2
      
#If there aren't two arguments to the script 
      
if (( $#!=2 )); then 
      
    #Print an error and exit 
      
    echo "Error, provide two numbers" && exit 1 
      
fi 
      
#For every number between the first argument and the last 
      
for ((i = $1; i <= $2; i++)) 
      
do 
      
    #Create a new folder for that number 
      
    echo "Creating directory number $i" 
      
    mkdir "week$i" 
      
done 
     
func_endMenu
