#!/bin/bash
#description
#write NO.17
#ver1.0
#
clear
#宣告一個陣列變數
declare -a aryl
ad=1
x=1
echo -e "\n==Generate 30 non-repeating \nnumbers in the range of 250~500==\n"
echo -e "=============================================\n"
	nn=$(($RANDOM*250/32767+250))
	#在250~500範圍內先產生第1個亂數(同時輸出畫面)，並加入到陣列的第1個元素供後續陣列比對用
	aryl[0]=$nn;echo -n -e "${aryl[0]}\t"
	#在250~500範圍內再產生29個不重複的亂數，並把不重複的亂數依序加入到陣列元素中
	until [ $x -eq 30 ]
		do
			nn=$(($RANDOM*250/32767+250))
			#檢查新產生的亂數值是否與陣列中已有的元素重複
			for(( z=0 ; z<${#aryl[@]} ; z=$z+1 ))
				do
					[ ${aryl[$z]} -eq $nn ] && ad=$(($ad+1))
				done
				#只把不重複的亂數加入陣列的元素中(同時輸出畫面，每6個輸出換行)
				[ $ad -eq 1 ] && aryl[$x]=$nn && echo -n -e "${aryl[$x]}\t" && x=$(($x+1)) && [ $(($x%6)) -eq 0 ] && echo ""
				#ad重新給值為1
				ad=1
		done
echo -e "\n=============================================\n"
exit 0