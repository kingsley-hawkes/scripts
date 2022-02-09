#!/bin/bash

endMenuOption="make another folder"
endMenuScript="mfm.sh"

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




read -p "Type the name of the folder you would like to create:" folderName

mkdir "$folderName"

echo -e "Folder named: $folderName, was just created."

func_endMenu

exit 0
