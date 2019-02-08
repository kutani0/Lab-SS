#!/bin/bash
#description使用使用until以read輸入數字
#可輸入多組數數字，若輸入END結束，印出平均數(透過傳值function)
#write NO.17
#ver1.0
#

#用function進行判斷與計算
function cal (){
	ca=$1
	#空值判斷
	[ -z $ca ] && echo -e "It is empty...\n" && chk=0 &&continue
	#正整數判斷
	expr $ca + 5 &> /dev/null;ch2=$?
	#判斷END或進行計算
	case $ch2 in
	0)
	#計算總數、個數
		sum=$(($sum+$ca))
		x=$((x+1))
	;;
	*)
	#判斷所傳來的參數是否為END，若是則不做計算，若不是顯示錯誤訊息，要求重新輸入
		[ $1 == "END" ] && echo -e "\ncalculate..." && break
		echo -e "\n~~input ERROR~~\n" && return 2> /dev/null
	;;
	esac
}

clear
chk=0
x=0
sum=0
echo -e "\n==Please continue to enter numbers==\n"
echo -e "======================================"
until [ $chk == "END" ]
do
	read -p "No.$(($x+1)) -- please enter: " chk
	cal $chk
done
echo -e "\n======================================\n"
#輸出平均數、個數
echo -e "Total: $x\nThe\tsum\tis\t$sum \nThe\taverage\tis\t$(($sum/$x)).$((($sum%$x)*10/$x))"
echo -e "\n======================================\n"
exit 0