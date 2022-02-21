#!/bin/bash

#Scavenge web page and puts it into a text file.
curl 'https://www.cyber.gov.au/acsc/view-all-content/alerts&advisories' | 
html2text | 
sed -n '/12_Feb_2022_-_Alert_status:_CRITICAL/,$p' |
sed -n '/Pagination/q;p' |
sed 's/_/:/g; s/ - /: /g' > scavenge.txt

curl "https://www.cyber.gov.au/acsc/view-all-content/alerts%26advisories?title_op=word&title=&body_value_op=word&body_value=&sort_by=field_date_user_updated_value&sort_order=DESC&page=1" |
html2text |
sed -n '/\[Search\] \[Clear search\]/,$p' |
sed -n '/Pagination/q;p' |
sed 's/_/:/g; s/ - /: /g' >> scavenge.txt

curl "https://www.cyber.gov.au/acsc/view-all-content/alerts%26advisories?title_op=word&title=&body_value_op=word&body_value=&sort_by=field_date_user_updated_value&sort_order=DESC&page=2" |
html2text |
sed -n '/\[Search\] \[Clear search\]/,$p' |
sed -n '/Pagination/q;p' |
sed 's/_/:/g; s/ - /: /g' >> scavenge.txt





# code addapted from t. Mester (2020).
#Mester, Tomi. (2020, Feb 5.) Where did we leave off? Scraping TED.com.... Scraping Multiple Web Pages with For Loops (in bash) -Web Scraping. Data36. https://data36.com/scraping-multiple-web-pages-urls-with-for-loops/
