#!/bin/bash
#description密碼產生器，可指定產生數字與英文，並指定密碼長度
#write NO.17
#ver1.0
#
clear
#宣告一個陣列變數
declare -a aryl
chk="c"
#判斷在ASCII亂數的區段
function sel ()
{
case $1 in
1)
nn=$(($RANDOM*3/32767+1))
;;
2)
nn=$(($RANDOM*1/32767+4))
;;
3)
nn=1
;;
4)
nn=$(($RANDOM*2/32767+2))
;;
esac
return $nn
}

until [ $chk == "e" ]
do
	echo -e "\n======Password  generator======\n"
	echo -e "================================="
	echo -e "\n(1)Number + English\n"
	echo -e "\n(2)Number + English + symbol\n"
	echo -e "\n(3)only Number\n"
	echo -e "\n(4)only English\n"
	echo -e "=================================\n"
	read -p "Please select the type of password generated ? " typ
	#空值判斷，若是則重新入
	[ -z $typ ] && echo "It's empty..." && num=0 && continue
	case $((typ)) in
	[1-4])
	echo ""
	read -p "Please enter the password length ? " num
	#空值判斷，若是則重新入，若不是則進行亂數產生
	[ -z $num -o -z $typ ] && echo "It's empty..." && num=0 && continue
	echo -e "\n=================================\n"
	#正整數判斷
	expr $num + 5 &> /dev/null;ch2=$?
	case $((ch2)) in
	0)
		for (( x=1 ; x<=$num ; x=x+1 ))
		do
		#依選單類別呼叫function函數，亂數決定產生的字符
			sel $typ
			case $? in
			1)
			#亂數輸出類型為1~9
			nn=$(($RANDOM*10/32767+48))
				printf \\x`printf %x $nn`
			;;
			2)
			#亂數輸出類型為大寫英文
			nn=$(($RANDOM*26/32767+65))
				printf \\x`printf %x $nn`
			;;
			3)
			#亂數輸出類型為小寫英文
			nn=$(($RANDOM*26/32767+97))
				printf \\x`printf %x $nn`
			;;
			4)
			#亂數輸出類型為大小寫英文加符號
			nn=$(($RANDOM*94/32767+33))
				printf \\x`printf %x $nn`
			;;
			esac
		done
		echo -e "\n\n=================================\n"
	;;
	*)
		clear
		echo "input error~~ Please re-select" && continue
	;;
	esac
	;;
	*)
		clear
		echo "input error~~ Please re-select~~" && continue
	;;
	esac
	#判斷e或回到選單
	read -p "countinue ('e' to exit)? " chk
	echo -e "\n\n=================================\n"
	[ $chk == "e" ] && echo -e "... end ...\n" && break || chk="c" && clear 
done
exit 0