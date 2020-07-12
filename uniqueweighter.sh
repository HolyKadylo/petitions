#!/bin/bash
# this one uniquates the weighted source
sort weightedsource.txt | uniq -c | sort -nr > uniqueweighted.txt
