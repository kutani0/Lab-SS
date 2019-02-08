#!/bin/bash
#description收到身高、體重傳遞參數進行BMI計算
#輸出BMI數值結果、範圍判定的提示
#write NO.17
#ver1.5
#
echo -e "\n===================\n"

#進行BMI計算
cal2=`awk -v x=$1 -v y=$2 'BEGIN {printf "%.1f\n",y/x/x*10000}'`

#判斷若主程式傳來的變數值為字符，致計算結果錯誤，顯示錯誤訊息，結束子程式
if [ $? -gt 0 ] ;then
	echo -e "\nThe input is incorrect. Cannot be calculated...\n" && exit
else
	#進行BMI計算再乘以10後，作評估範圍數值比對用
	cal=`awk -v x=$1 -v y=$2 'BEGIN {printf "%.0f\n",y/x/x*10000*10}'`
	#顯示傳遞參數
	echo -e "height: $1  weight: $2\n"
	#BMI顯示BMI結果	
	echo -e "BMI: $cal2\n"
	#依BMI結果數值判斷範圍、輸出相關的評估提示
		if [ $cal -ge 350 ];then
			echo "BMI ≧ 35 Severe obesity"
		elif [ $cal -ge 300 ];then
			echo "30 ≦ BMI ＜35 Severe obesity"
		elif [ $cal -ge 270 ];then
			echo "27 ≦ BMI ＜30 Mild obesity"
		elif [ $cal -ge 240 ];then
			echo "24 ≦ BMI ＜27 too heavy"
		elif [ $cal -ge 185 ];then
			echo "18.5 ≦ BMI ＜24 normal range"
		elif [ $cal -gt 0 ];then
			echo "BMI ＜18.5 too Underweight"
		else
			echo "\nThe input is incorrect. Cannot be calculated...\n"
		fi
fi
exit 0