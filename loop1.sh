#!/bin/bash
H=$(date +%H)
M=$(date +%M)

for i in $(seq 0 60)
do
	echo "$H:$M:$i"
	sleep 1
	clear
	[ $i eq 0 ] && M++
	[ $M eq 59 -a $i eq 59] &&  sleep 0.1 && $M++
done
