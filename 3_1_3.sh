#!/bin/bash
#description以while為主，陸續輸入數據後，進行累加，並輸出累加、平均數值
#write NO.17
#ver1.0
#
clear
chk=0
x=0
sum=0
echo -e "\n==Please continue to enter numbers==\n"
echo -e "=======(input 'END' to calculating)======="
while [ $chk != "END" ]
do
	read -p "No.$(($x+1)) -- please enter: " chk
	#空值判斷
	[ -z $chk ] && echo "It's empty..." && chk=0 && continue
	#正整數判斷
	expr $chk + 5 &> /dev/null;ch2=$?
	#判斷END或進行計算
	case $ch2 in
	0)
		sum=$(($sum+$chk))
		x=$((x+1))
	;;
	*)
	#確認輸入END顯示start calculating訊息，跳出迴圈
	[ $chk == "END" ] && echo -e "\nstart calculating..." && break
	#剩下其他非數字的文字符，顯示not a number!!訊息，跳出迴圈
	echo -e "\nnot a number!! start calculating..." && break
	;;
	esac
done
echo -e "\n======================================\n"
#輸出結果
echo -e "Total: $x\nThe\tsum\tis\t$sum \nThe\taverage\tis\t$(($sum/$x)).$((($sum%$x)*10/$x))"
echo -e "\n======================================\n"
exit 0