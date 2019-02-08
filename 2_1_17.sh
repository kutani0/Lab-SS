#!/bin/bash
#description設計星座查詢程式
#write NO.17
#ver1.0
#
clear
for (( y=1 ; y<=20 ; y=y+1 ))
do
echo -e "\n-----------------------------------------------\n"
read -p "Please enter the month of birth (mm) : " mm
echo ""
expr $mm + 5 &> /dev/null
if [ $? -eq 0 ] && [ ${#mm} -gt 0 ] && [ ${#mm} -le 2 ] && [ $mm -gt 0 ] && [ $mm -le 12 ]
then
read -p "Please enter the day of birth (dd) : " dd
expr $dd + 5 &> /dev/null
if [ $? -eq 0 ] && [ ${#dd} -gt 0 ] && [ ${#dd} -le 2 ] && [ $dd -gt 0 ] && [ $dd -le 31 ]
then
echo -e "\n-----------------------------------------------\n"

md=$(($mm*100+$dd))

if [ $md -ge 1221 ];then
mdd="a"
elif [ $md -ge 1122 ];then
mdd=9
elif [ $md -ge 1024 ];then
mdd=8
elif [ $md -ge 923 ];then
mdd=7
elif [ $md -ge 823 ];then
mdd=6
elif [ $md -ge 723 ];then
mdd=5
elif [ $md -ge 622 ];then
mdd=4
elif [ $md -ge 521 ];then
mdd=3
elif [ $md -ge 420 ];then
mdd=2
elif [ $md -ge 321 ];then
mdd=1
elif [ $md -ge 220 ];then
mdd="b"
elif [ $md -ge 121 ];then
mdd="c"
elif [ $md -ge 101 ];then
mmd="d"
else
echo ""
fi
echo -e "Your birthday $mm/$dd is\n"
	case $mdd in
		1 )
		echo -e "\t\t♈Aries"
		;;
		2 )
		echo -e "\t\t♉Taurus"
		;;
		3 )
		echo -e "\t\t♊Gemini"
		;;	
		4 )
		echo -e "\t\t♋Cancer"
		;;
		5 )
		echo -e "\t\t♌Loen"
		;;
		6 )
		echo--e "\t\t♍Virgo"
		;;
		7 )
		echo -e "\t\t♎Libra"
		;;
		8 )	
		echo -e "\t\t♏Scorpio"
		;;
		9 )
		echo -e "\t\t♐Sagittarius"
		;;
		a )
		echo -e "\t\t♑Capricorn"
		;;
		b )
		echo -e "\t\t♓Pisces"
		;;
		c )
		echo -e "\t\t♒Aqurius"
		;;
		* )
		echo -e "\t\t♑Capricorn"
		;;
	esac
	echo -e "\n-----------------------------------------------\n"
	echo -e "\n"
	read -p "continued ? (input n,N to exit) " chk
	[ $chk == "n" -o $chk == "N" ] && exit 0 || clear

mmd=0
md=0
else
	clear
	echo -e "\nInput format is wrong, please enter correct day format(01...31)~~\n\nPlease input again\n"
fi
else
	clear
	echo -e "\nInput format is wrong, please enter correct month format(01...12)~~\n\nPlease input again\n"
fi
done

exit 0
