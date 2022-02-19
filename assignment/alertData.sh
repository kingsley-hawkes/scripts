#!/bin/bash

#Seperating Alert status from descriptions.
awk '

BEGIN {
	FS=":";
	print "Date        |Alert Status|Description";
}
#Match any date in DD MMM YYYY format and print date and alert status in a table.
/[0-9]{2} [A-Z][a-z]{2} [0-9]{4}/ {
	printf("|%-11s|%-12s|%s\n", $1, $3, $5);
}' scavenge.txt > data.txt
