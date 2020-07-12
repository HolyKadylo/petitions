#!/bin/bash
# this one takes  subscribers, total number of words and first two words and consolidates them

subs=$(cat params | grep "subscribers=")
words=$(cat params | grep "totalnumberofwords=")
first=$(cat params | grep "firstwords=")

echo $subs","$words","$first >> ../consolidation-1
