#!/bin/bash
#description輸出九九乘法表
#write NO.17
#ver1.0
#
clear
#for迴圈做九次
for (( y=1 ; y<=9 ; y=y+1 ))
do
#for迴圈做九次
	for (( x=1 ;x<=9 ;x=x+1 ))
	do
	#x,y變化相乘81次
		echo -n -e "$y x $x = $(($y*$x))\t"
	done
	echo ""
done
exit 0