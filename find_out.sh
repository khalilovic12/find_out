#!/bin/bash

folder="./"

file="list_exct.txt"

rm -f $file

find $folder \( -type f -executable -o -print -type d -executable \) -print >> $file

count=$(wc -l < $file)
echo "Number of executable files found: $count"
