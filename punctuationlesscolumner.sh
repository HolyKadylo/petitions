#!/bin/bash
#this file turns punctuationless to column format

grep -oP '\S+' punctuationless.txt > punctuationlesscolumn.txt
