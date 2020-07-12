#!/usr/bin/python3
# this one sums the weights

consfile = open("consolidation-2", "r")
prevWord = "none"
prevNum = 1000000
sum = 0
for line in consfile:
	#print (line)
	pos = line.index('	')
	num = line[0:int(pos)]
	intnum = int(num)
	word = line[int(pos):-1]


	#print (word,previousWord)
	if word == previousWord:
		print("MATCHWORD:",word," ",previousWord)
		sum = sum + intnum
	else:
		

consfile.close()
