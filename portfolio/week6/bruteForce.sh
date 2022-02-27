#!/usr/bin/python

#import python libraries for script.
import itertools
import string # (Rushakoff, Perry, 2019)

#Defining char variable.
char = string.ascii_letters
#starting character length.
charLength = 1

#Starts the  guessing for itertools iteration.
for charLength in range (20):

	#Defining guess.
	guess = (itertools.product(char, repeat = charLength))
	
	#defining which password to crack.
	password = "secret"

	#Loop to match guess with stored password.
	for i in guess:
		if i == password:
			break 
			print(i)
exit()
#Coding of script addapted from Pancake Hax (no date), Jon Clements (2012) and Python (no date).

#References:
#Clements, Jon. (2012, Jul 6). Brute force script in Python 3.2. Code first:. stackoverflow. https://stackoverflow.com/questions/11367553/brute-force-script-in-python-3-2
#Pancake Hax. (no date). Password Brute-forcer in Python. instructables circuits. https://www.instructables.com/Password-Brute-forcer-in-Python/
#Perry, John. Rushakoff, Mark. (2019, Mar 4). Generate a random letter in Python. Simple. stackoverflow.https://stackoverflow.com/questions/2823316/generate-a-random-letter-in-python 
#Python. (no date). itertools -Functions creating iterators for efficient looping. Python. https://docs.python.org/3/library/itertools.html
