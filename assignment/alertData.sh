#!/bin/bash

#Seperating Alert status from descriptions.
awk '

BEGIN {
	FS=":";
	print "| Year | Month |Alert Status|";
	print "|------|-------|------------|";
}
#Match any date in DD MMM YYYY format and print date and alert status in a table.
/[0-9]{2}:[A-Z][a-z]{2}:[0-9]{4}/ {
	printf("|%-6s|%-7s|%-12s|\n", $3, $2, $8);
}' scavenge.txt > data.txt
