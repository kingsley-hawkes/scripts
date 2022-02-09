#!/bin/bash

greeting="Hello"
user=$(whoami)
day=$(date +%A)

echo "$greeting $user! Today is $day, $1!"
# Notice this script is the same as 'third.sh' however it is utilizing a variable used in 'second.sh'
# If './fourth.sh fantastic' was entered as the exe command then  "Hello student! Today is Friday, fantastic!" would be echoed.

echo "Your Bash shell version is: $BASH_VERSION. Enjoy!"

exit 0

# Script ideas developed from Lubos Rendek (2020, 28th May) Bash Scripting Tutorial for Beginners. https://linuxconfig.org/bash-scripting-tutorial-for-beginners
