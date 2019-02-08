#!/bin/bash
#description列出菱形圖案
#write NO.17
#ver1.0
#
clear
for (( y=3 ; y>=-3 ; y=y-1 ))
do
	if [ $y -lt 0 ]
	then
		yy=$((0-$y))
	else
		yy=$y
	fi
	for (( z=1 ; z<=$yy ; z=z+1 ))
	do
		echo -n " "
    done
	for (( i=1 ; i<=7-$yy*2 ; i=i+1 ))
	do
		echo -n "*"
	done
	for (( x=1 ; x<=$yy ; x=x+1 ))
	do
		echo -n " "
	done
echo ""
done
exit 0
