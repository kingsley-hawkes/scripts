#!/bin/bash

greeting="Hello"
# In this  third script I added some declared variables. 'greeting' is a variable which is declared as 'Hello'

user=$(whoami)
# This is another example of a declared variable which uses another variable inside.
# The second variable  must use the dollar sign to indicate a variable.
# 'whoami' is a command which echos the current user name.

day=$(date +%A)
# The 'date' is another special command which echos the current date.
# suffixing 'date' with '+%A' restricts the echoed date to just the day.


echo "$greeting $user! Today is $day, lucky you!"
# This echo string uses the three declared variables written above. As they are variables the dollar sign must be used.

echo "Your Bash shell version is: $BASH_VERSION. Enjoy!"
# This is an example of a special variable 'BASH_VERSION'  it echos the current version of BASH being used.
# Notice that this variable is written all in capital letters.
# Variables should only be written in capitals if they are special variables usually set by script writters.
# If you make your own declared variables in capitals you risk overwriting these special variables and cause errors.

exit 0

# script ideas developed from Lubos Rendek (2020, 28th May) Bash Scripting Tutorial For Beginners. https://linuxconfig.org/bash-scripting-tutorial-for-beginners
