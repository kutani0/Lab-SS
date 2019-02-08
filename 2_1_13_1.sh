#!/bin/bash
##description列出下直角小三角形圖案2
#write NO.17
#ver1.0
#
clear
for (( y=7 ; y>=1 ; y=y-1 ))
do
	for (( x=7-$y ; x>=1 ; x=x-1 ))
	do
		echo -n " "
	done
	for (( i=1 ; i<=$y ; i=i+1 ))
	do
		echo -n "*"
	done
	for (( z=7-$y ; z>=1 ; z=z-1 ))
	do
		echo -n " "
	done
echo ""
done
exit 0
