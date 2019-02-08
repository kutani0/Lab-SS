#!/bin/bash
#description列出上直角小三角形圖案
#write NO.17
#ver1.0
#
clear
for (( y=8 ; y>=1 ; y=y-1 ))
do
	for (( x=$y-1 ; x>=1 ; x=x-1 ))
	do
		echo -n " "
	done
	for (( i=7 ; i>=$y-1 ; i=i-1 ))
	do
		echo -n "*"
	done
echo ""
done
exit 0
