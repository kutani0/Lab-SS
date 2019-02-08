#!/bin/bash
#descriptionˇ六位男女分住不同地區，以地區為主存入陣列
#選擇男(或女)，輸出台北或台中有哪些男(或女)清單
#write NO.17
#ver1.0
#
clear
#定義兩個陣列(台北、台中地區)
declare -A taipei_array
declare -A taichung_array

#定義台北地區陣列中，男女名字清單
taipei_m=([1]=ken [2]=jeo )
taipei_w=([1]=alina)
#定義台中地區陣列中，男女名字清單
taichung_m=([1]=rax )
taichung_w=([1]=ada [2]=ailsa)

#選單選擇輸出兩區中有男的名字清單、有女的名字清單、全部名字清單
	echo "taipei : ${taipei_m[*]]} ${taipei_w[*]]}"
	echo "taichung : ${taichung_m[*]} ${taichung_w[*]}"
	
	echo -e "\n====select====\n"
	echo -e "==================="
	echo -e "(1) man\n"
	echo -e "(2) wonan\n"
	echo -e "===================\n"
	read -p "please choose 1 or 2 ? " cho
	echo -e "\n===================\n"
#條件判斷
	case $cho in
		1)
		echo "man list"
		echo "taipei : ${taipei_m[@]}"
		echo "taichung : ${taichung_m[@]}"
		;;
		2)
		echo "woman list"
		echo "taipei : ${taipei_w[@]}"
		echo "taichung : ${taichung_w[@]}"
		;;
		*)
		echo ""
		exit
		;;
	esac
exit 0