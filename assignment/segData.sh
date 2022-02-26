#!/bin/bash
year="$1"

cat rawData.txt | grep "$year" > data/$year.dat


