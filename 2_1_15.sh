#!/bin/bash
#description列出沙漏圖案
#write NO.17
#ver1.0
#
clear
#for迴圈將變數y由3遞減到-3
for (( y=3 ; y>=-3 ; y=y-1 ))
do
	#當y遞減到0以下時，將數值變成正數後，存到yy變數中
	if [ $y -lt 0 ]
	then
		yy=$((0-$y))
	else
		yy=$y
	fi
	#依yy的數值變化，控制空白字符的輸出
	for (( x=4-$yy ; x>1 ; x=x-1 ))
	do
		echo -n " "
	done
	#依yy的數值變化，控制**字符的輸出
	for (( i=$yy+1 ; i>=1 ; i=i-1 ))
	do
		echo -n "**"
	done
	#依yy的數值變化，控制空白字符的輸出
	for (( z=4-$yy ; z>1 ; z=z-1 ))
	do
		echo -n " "
	done	
echo ""
done
exit 0