#!/bin/bash
#this file takes firstline and adds a line before it in params file

sed "s/firstline/\nfirstline/g" params > params2
/bin/rm params
/bin/mv params2 params
