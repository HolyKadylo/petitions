#!/bin/bash
# this one increses the volume of smaller petitions to match the number of words in the biggest one

cat params | grep "totalnumberofwords=" > tmp1
num=$(sed 's/totalnumberofwords=//g' tmp1)
/bin/rm tmp1
/bin/cp ../multiplyfactorcounter.py mfc.py
factor=$(./mfc.py $num)
/bin/rm mfc.py
echo $factor

for (( c=1; c<=$factor; c++))
do
	echo "here"
	cat punctuationlesscolumn.txt >> weightedsource.txt
done

