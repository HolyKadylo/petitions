#!/bin/bash
#executes the given script in all the folders

for i in {1..72}
do
	/bin/cp $1 $i/
	cd $i
	./$1
	rm $1
	cd ..
	echo "-->Done $i"
done
