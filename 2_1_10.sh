#!/bin/bash
#description限用read,case,if,let,設計對話式面積計算程式，計算矩形,圓,正三角面積
#write NO.17
#ver1.5
#

clear
cc="y"
for (( i=1 ; i<=50 ; i=i+1 ))
do
	
	echo -e "=====================================\n"
	echo -e "Please select a calculation item ?\n\n\t(1) Rectangular area\n\t(2) Circular area\n\t(3) Positive triangle area\n"
	echo -e "=====================================\n"
	read -p "select (input e: end process) : " selenum 
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
			clear
			echo -e "Rectangular area calculation\n(Please enter a positive integer): "
			echo -e "\n============================\n"
			read -p "Input Length ? " len
			read -p "Input width  ? " wid
			echo -e "\n----------------------"
			echo "Calculation results : "
			let mycal=$len*$wid
			echo "$len x $wid = $mycal"
			echo -e "----------------------\n"
			read -p "continued ? (y/n) " chk
			if [ $chk == "y" -o $chk == "Y" ]
			then
				clear
			elif [ $chk == "n" -o $chk == "N" ]
			then
				exit 0
			else
				echo "input y or n"
			fi
		;;
		2)
			clear
			echo -e "Circular area calculation\n(Please enter a positive integer): "
    		echo -e "\n============================\n"
			read -p "Input Radius ? " rad
    		echo -e "\n----------------------"  
			echo "Calculation results : " 
            let mycal=$rad*$rad*314
            let mycal1=$mycal/100
			let mycal2=$mycal%100
			echo "3.14 x $rad x $rad = $mycal1.$mycal2"
			echo -e "----------------------\n"
			read -p "continued ? (y/n) " chk
			if [ $chk == "y" -o $chk == "Y" ]
            then
            clear
	        elif [ $chk == "n" -o $chk == "N" ]
	        then 
				exit 0
            else
                echo "input y or n"
			fi
		;;
		3)
			clear
			echo -e "Positive triangle calculation\n(Please enter a positive integer): "
    		echo -e "\n============================\n"
			read -p  "Input Length ? " tlen
    		echo -e "\n----------------------"
    		echo "Calculation results : "
            let mycal=$tlen*$tlen*1732/4
			let mycal1=$mycal/1000
			let mycal2=$mycal%1000
            echo "1.732 / 4 x $tlen x $tlen = $mycal1.$mycal2"
            echo -e "----------------------\n"
			read -p "continued ? (y/n) " chk
			if [ $chk == "y" -o $chk == "Y" ]
            then 
                clear
            elif [ $chk == "n" -o $chk == "N" ]
            then 
                exit 0
            else
                echo "input y or n"
            fi
		;;	
		*)	
			echo "Please input 1 or 2 or 3 !!!"
			echo ""
		;;
		esac
	fi
done

exit 0
