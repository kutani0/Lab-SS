#!/bin/bash
#description以until為主，輸入一個數值後，輸出該數值1000以內的倍數
#write NO.17
#ver1.0
#
clear
chk=0
x=1
sum=0
echo -e "\nPlease enter a number(0~1000) to calculate\na multiple of less than 1000"
echo -e "================================================\n"
read -p "please enter: " chk
echo -e "\n================================================\n"
#空值判斷
[ -z $chk ] && echo -e "It's empty...can't calculate...\n" && exit
expr $chk + 3 &> /dev/null;ch2=$?
#判斷ch2是否為正整數判斷，若ch2是正整數則進行下一個判斷
if [ $ch2 -gt 0 ];then
	echo -e "\nnot a number!!\n"
#確認輸入數值是否介於1~1000，再進行計算
elif [ $chk -gt 1 -o $chk -le 1000 ];then
	#累乘計算
	until [ $(($chk*$x)) -gt 1000 ]
	do
		sum=$(($chk*$x))
		#輸出結果
		echo -n -e "$sum\t"
		x=$((x+1))
		#每5個換行
		[ $((($x-1)%5)) -eq 0 ] && echo ""
	done
else
	echo -e "\nPlease enter a number from 0 to 1000\n"
fi
#輸出個數
	echo -e "\n\n\tTotal : $(($x-1)) values\n"
echo -e "================================================\n"
exit 0