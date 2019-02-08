#!/bin/bash
#description限用read,case,if,let,設計對話式面積計算程式，計算矩形,圓,正三角面積
#以下是將let改成awk
#write NO.17
#ver1.0
#

clear
cc="y"
for (( i=1 ; i<=15 ; i=i+1 ))
do
	echo -e " (1) Rectangular area\n (2) Circular area\n (3) Positive triangle area "
	read -p "Please select a calculation item ? (input e: end process)" selenum 
	echo ""
	if [ $selenum == "e" ]
	then
		echo "end ..."
		echo ""
		exit 0
	else
		echo ""
		case $selenum in
		1)
			echo "Rectangular area calculation : "
			read -p "Input Length ? " len
			read -p "Input width  ? " wid
			echo "-----------------------"
			echo "Calculation results : "
			echo "$len x x$wid = "
			echo "$len $wid" | awk '{print $1*$2}'
			echo -e "-----------------------\n"
		;;
		2)
			echo "Circular area calculation : "
    		read -p "Input Radius ? " rad
    		echo "----------------------"  
			echo "Calculation results : " 
    		echo "3.1415 x $rad x $rad = "
			echo "$rad" | awk '{print $rad*$rad*3.1415}'
			echo -e "----------------------\n"
		;;
		3)
			echo "Positive triangle calculation : "
    		read -p "Input Length ? " tlen
    		echo "----------------------"
    		echo "Calculation results : "
			echo "1.732 / 4 x $tlen x $tlen = "
			echo "$tlen" | awk '{print $1*$1*1.732/4}'
			echo -e "----------------------\n"
		;;	
		*)	
			echo "Please input 1 or 2 or 3 !!!"
		;;
		esac
	fi
done

exit 0
