#!/bin/bash

greeting="Hello"
user=$(whoami)
day=$(date +%A)

echo "$greeting $user! Today is $day, $*!"
# In this fifth version, notice I replaced the '1' with an '*'
# The '*' is a special character which pretty much means 'anything that follows'
# this means it will echo anything typed into the exe string whereas the '1' would only echo the first word.
# If I typed './fifth.sh wow you are so lucky' then it would echo "Hello student! Today is Friday, wow you are so lucky!" 

echo "Your Bash shell version is: $BASH_VERSION. Enjoy!"

exit 0

