#!/bin/bash 
      
#Beginning of Table to set up headings.      
awk 'BEGIN { 

#FS set how the information will be segmented.
    FS=":"; 
      
    print "| \033[34mUsername  \033[0m | \033[34mUserID\033[0m | \033[34mGroupID\033[0m | \033[34mHome            \033[0m | \033[34mShell             \033[0m |"; 
    print ("|____________|________|_________|__________________|____________________|");
} 

#Main body of Table: only shows users in /bin/bash shells.
/\/bin\/bash/{ 
      
    printf("| \033[33m%-10s\033[0m | \033[35m%-6s\033[0m | \033[35m%-7s\033[0m | \033[35m%-16s\033[0m | \033[35m%-18s\033[0m |\n", $1, $3, $4, $6, $7); 
      
}' /etc/passwd 
     
