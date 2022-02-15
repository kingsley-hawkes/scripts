#!/bin/bash

#Scavenge web page and puts it into a text file.

curl 'https://www.cyber.gov.au/acsc/view-all-content/alerts&advisories' | 
html2text | 
sed -n '/12_Feb_2022_-_Alert_status:_CRITICAL/,$p' |
sed -n '/Pagination/q;p' > scavenge.txt
