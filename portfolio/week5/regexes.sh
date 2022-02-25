#!/bin/bash

#grep statements to grab various statements with regexes patterns.

grep -r "sed"

grep -r '^m'

grep -r -E '/d{3}'

grep -r -e '"echo",/s,/w+,/s,/w+,/s,/w+,?.*'

grep -r -E '/d && /[A-Z] && /[a-z] && [[:punct:]]' 
