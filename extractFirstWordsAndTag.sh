#!/bin/bash
#extracts from source the first word and first line and adds this info to params

firstline=$(head -1 source.txt)
echo 'firstline='$firstline >> params

firstword=$(head -1 source.txt | grep -Eo '^[^ ]+')
echo 'firstword='$firstword >> params

/bin/cp source.txt tmp.txt
sed "s/$firstword //g" tmp.txt > tmp2.txt

secondword=$(head -1 tmp2.txt | grep -Eo '^[^ ]+')
echo "firstwords="$firstword" "$secondword >> params
/bin/rm tmp.txt
/bin/rm tmp2.txt
