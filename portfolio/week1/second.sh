#!/bin/bash
# The above string starts with a special command called a 'shebang' which is a '#!' 
# This special command tells the computer that you wish to run the following script using BASH.
#BASH is a computer language that was developed from the first language written for linux systems
#BASH means Born Again Shell.

echo "Hi there!"
# 'echo' is a special command that prints what ever follows onto the screen. In this example it will print "Hi there!"

echo "It's good to see you $1!"
# In this example there is a variable. A variable is a special value that BASH can insert into strings.
# BASH uses a 'dollar sign' to represent a variable. 
#This example uses '$1' which means it will insert the first word typed after the execution command.
# For example, the execution command is './second.sh' if './second.sh Shuchi' was typed it would print "It's good to see you Shuchi!"

exit 0

# 'exit' is another special command that closes the script.
# '0' is an error message code. '0' means closed successfully.
