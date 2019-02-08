#!/bin/bash
#description限用read,case,if,let,設計對話式面積計算程式，計算矩形,圓,正三角面積
#write NO.17
#ver2.0
#
clear

#選單畫面可選擇計算項目
echo -e "(1) Rectangular area\n(2) Circular area\n(3) Positive triangle area\n"
read -p "Please select a calculation item ? (input e to exit)" selenum 
echo ""
	if [ $selenum == "e" ]
	then
		clear
		echo "...end ..."
		echo ""
		exit 0
	else
		echo ""
		case $selenum in
		1)
		#計算矩形面積
			echo "Rectangular area calculation : "
			read -p "Input Length ? " len
			read -p "Input width  ? " wid
			echo "----------------------"
			echo "Calculation results : "
			let mycal=$len*$wid
			echo "$len x $wid = $mycal"
			echo -e "----------------------\n"
		;;
		2)
		#計算圓形面積
			echo "Circular area calculation : "
    		read -p "Input Radius ? " rad
    		echo "---------------------"  
			echo "Calculation results : " 
            let mycal=$rad*$rad*314
            let mycal1=$mycal/100
			let mycal2=$mycal%100
			echo "3.14 x $rad x $rad = $mycal1.$mycal2"
			echo -e "----------------------\n"
		;;
		3)
		#計算三角形面積
			echo "Positive triangle calculation : "
    		read -p "Input Length ? " tlen
    		echo "---------------------"
            let mycal=$tlen*$tlen*1732/4
			let mycal1=$mycal/1000
			let mycal2=$mycal%1000
            echo "1.732 / 4 x $tlen x $tlen = $mycal1.$mycal2"
			echo -e "----------------------\n"
		;;	
		*)
		#當輸入不是1~3的提示
			clear
			echo "\nPlease input 1 or 2 or 3 !!! Please re-execute the script\n"
		;;
		esac
	fi

exit 0
