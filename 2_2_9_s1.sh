#!/bin/bash
#description平方米與坪換算
#此為計算平方米換算成坪
#輸出換算出的坪數值
#write NO.17
#ver1.0
#
echo -e "\n===================\n"
#進行計算
cal=`awk -v x=$1 'BEGIN {printf "%.3f\n",x*3025/10000}'`
#判斷若主程式傳來的變數值為字符，致計算結果為0.000則顯示錯誤訊息，若不是字符則輸出計算結果
if [ $1 == 0 ];then
	#確認收到傳遞參數
	echo -e "square meter value : $1"
	echo -e "\nSquare footage : $cal\n"
else
	[ $cal == "0.000" ] && echo -e "\nThe input is incorrect and cannot be calculated...\n" || echo -e "\nSquare footage : $cal\n"
fi
echo -e "===================\n"
exit 0