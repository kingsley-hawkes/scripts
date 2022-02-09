#!/bin/bash

# Array of Fruit
FRUITS=('Apple' 'Mango' 'Strawberry' 'Orange' 'Banana')


# Loops through the array and echos each to screen.
for fruit in "${FRUITS[@]}"; do

	echo "FRUIT: $fruit"

done


# For loop with array script adapted from example from :
# Linuxize. (2020, Feb 24). Bash For Loop. https://linuxize.com/post/bash-for-loop/
