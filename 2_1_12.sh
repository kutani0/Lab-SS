#!/bin/bash
#description列出下直角小三角形圖案
#write NO.17
#ver1.0
#
clear
for (( y=9 ; y>=1 ; y=y-1 ))
do
	for (( x=$y-1 ;x>=1 ;x=x-1 ))
	do
		echo -n "*"
	done

	[ $y -gt 1 ] && echo ""
done

exit 0
