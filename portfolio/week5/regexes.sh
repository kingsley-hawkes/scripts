#!/bin/bash

#grep statements to grab various statements with regexes patterns.

grep -r "sed"

grep -r '^m'

grep -r -E '/d{3}'

grep -r -e '"echo",/s,/w+,/s,/w+,/s,/w+,?.*'

grep -r -E '/d && /[A-Z] && /[a-z] && [[:punct:]]'
#Code for matching a password was by M. Mombrea (2013). 


#Mombrea, Matthew. (2013, June 11). How to validate password strength using a regular expression. Computerworld. 
#https://www.computerworld.com/article/2833081/how-to-validate-password-strength-using-a-regular-expression.html

