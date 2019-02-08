#!/bin/bash
#description列出正方形圖案
#write NO.17
#ver1.0
#
clear
for (( y=8 ; y>=1 ; y=y-1 ))
do
case $y in
	1)
	echo "********"
	;;
	2)
	echo "*      *"
	;;
	3)
	echo "*      *"
	;;	
	4)
	echo "*      *"
	;;
	5)
	echo "*      *"
	;;
	6)
	echo "*      *"
	;;
	7)
	echo "*      *"
	;;
	8)	
	echo "********"
	;;
esac
done
exit 0
