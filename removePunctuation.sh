#!/bin/bash
#removes punctuation from source and creates punctuationless
sed 's/\./ /g' source.txt > 1.tmp
sed 's/!/ /g' 1.tmp > 2.tmp
sed 's/?/ /g' 2.tmp > 3.tmp
sed 's/(/ /g' 3.tmp > 4.tmp
sed 's/)/ /g' 4.tmp > 5.tmp
sed 's/-/ /g' 5.tmp > 6.tmp
sed 's/"/ /g' 6.tmp > 7.tmp
sed 's/«/ /g' 7.tmp > 8.tmp
sed 's/»/ /g' 8.tmp > 9.tmp
sed 's/;/ /g' 9.tmp > 10.tmp
sed 's/,/ /g' 10.tmp > punctuationless.txt
/bin/rm 1.tmp 2.tmp 3.tmp 4.tmp 5.tmp 6.tmp 7.tmp 8.tmp 9.tmp 10.tmp
