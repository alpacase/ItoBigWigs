#!/bin/sh

for bw in `ls *.bw`
do
	name=${bw%.*}
	echo "track ${name}
	shortLabel ${name}
	longLabel ${name}
	type bigWig
	bigDataUrl ${name}.bw
	color 0,0,255
	autoScale on
	alwaysZero on
	windowingFunction mean
	" >> trackDB.txt
done
