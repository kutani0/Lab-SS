#!/bin/bash
#description平方米與坪換算
#此為選單的部分
#呼叫2_2_9_s1.sh或2_2_9_s2.sh並傳遞參數
#write NO.17
#ver1.0
#
clear
hi=""
chk="c"
until [ $chk == "e" ]
do
	echo -e "\n==Area conversion==\n"
	echo -e "==================="
	echo -e "(1) Square meter ==> Square footage\n"
	echo -e "(2) Square footage ==> square meters\n"
	echo -e "'e' to exit.."
	echo -e "===================\n"
	read -p "please choose 1 or 2 or 'e'? " cho
	echo -e "\n===================\n"
	#判斷輸入的選擇項目1,2,e
	case $cho in
		1)
		read -p "Please enter a square meter value: " sqm
		#判斷sqm是否為空值，若sqm是則重新入，若不是則呼叫計算腳本s1並傳遞參數
		[ -z $sqm ] && echo "It's empty..." && sqm=0 && continue
			./2_2_9_s1.sh ${sqm}
		;;
		2)
		read -p "Please enter the Square footage value: " pi
		#判斷pi是否為空值，若pi是則重新入，若不是則呼叫計算腳本s2並傳遞參數
		[ -z $pi ] && echo "It's empty..." && pi=0 && continue
			./2_2_9_s2.sh ${pi}
		;;
		e)
		#輸出結束訊息，中斷迴圈
		echo -e "\n... END ...\n"
		break
		;;
		*)
		clear
		#若不是1,2,e則要求重新選擇，若輸入e時，結束迴圈
		read -p "worng select!!  continue ? 'e' to exit.. " chk && [ -z $chk ] && chk="c" && clear && continue
		[ $cho == "e" ] && echo "... END ..." && break || clear
		continue
		;;
	esac
	#確認是否再次新一輪的計算，若輸入e時，結束迴圈
	read -p "continue ? 'e' to exit.. " chk && [ -z $chk ] && chk="c" && clear && continue
	echo -e "\n==================="
	echo -e "\n... END ...\n" 
done
exit 0