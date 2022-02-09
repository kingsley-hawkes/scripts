#!/bin/bash

endMenuOption="copy another folder"
endMenuScript="mfc.sh"

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

read -p "Type the name of the folder you would like to copy: " folderName

#if the name is a valid directory

if [ -d "$folderName" ]; then
	#copy it to a new location
	read -p "Type the name of the destination folder: " newFolderName
	cp -r "$folderName" "$newFolderName"
	func_endMenu
else
	#otherwise, print an error with options.
	echo "I couldn't find that folder."
	func_endMenu
fi

exit 0
