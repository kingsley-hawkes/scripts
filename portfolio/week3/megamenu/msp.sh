#!/bin/bash

endMenuOption="set another password"
endMenuScript="msp.sh"

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


echo "Welcome to Folder creater!"
echo "Please enter folder name."
read folder_name
# the command 'read' will copy the input of the user and store it as a variable. The variable name is 'folder_name.
echo "You have chosen folder name: $folder_name"
# This string calls the variable 'folder_name' which was just created with the 'read' command.
echo "Please enter a secret password."
read -s secret_password
# here we use an option for the 'read' command '-s' This option makes the input secret and hides it on the screen.
echo "You have just chosen a secret password for folder name: $folder_name"
echo $secret_password | sha256sum > secret.txt
# This last string  uses the 'pipe' command which is a '|' which inputs what ever is before it into what ever is after it.
# In this example it inputs the variable 'secret_password' into the command 'sha256sum' 
# the command 'sha256sum' hashes what ever value is stored in the variable 'secret_password'
# The last part of this string uses a '>' special character which adds the hash created by 'sha256sum' into the file 'secret.txt'

func_endMenu

exit 0
