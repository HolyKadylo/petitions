#!/bin/bash
# this one counts all the words in the column of punctuationlesscolumn

words=$(wc -l punctuationlesscolumn.txt)
num=$(echo $words | grep -Eo '^[^ ]+')
echo "totalnumberofwords="$num >> params
