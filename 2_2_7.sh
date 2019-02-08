#!/bin/bash
#description輸入身高、體重計算BMI
#此script為選單的部分
#呼叫2_2_7_s.sh並傳遞參數
#write NO.17
#ver1.5
#
clear
chk="c"
until [ $chk == "e" ]
do
	echo -e "==BMI calculation==\n"
	echo -e "===================\n"
	read -p "What is your height(cm)? " hh
	#判斷輸入是否為空值，若是則重新入身高，若不是空值則詢問體重
	[ -z $hh ] && clear && echo "It's empty..." && hh=0 && continue
	read -p "What is your weight(kg)? " ww
	#判斷輸入是否為空值，若是則重新入，若不是空值則呼叫2_2_7_s.sh並傳遞身高、體重參數
	[ -z $ww ] && echo "It's empty..." && ww=0 && continue
	./2_2_7_s.sh ${hh} ${ww}
	echo -e "===================\n"
	#確認是否再次新一輪的計算，若輸入e時，結束迴圈
	read -p "countiuns? 'e' to exit : " chk && [ -z $chk ] && chk="c" && clear && continue
	echo -e "\n===================\n"
done
exit 0