#!/bin/bash
#description限以read與test，輸入一個檔名或目錄，判斷是否存在，並判別RWX屬性輸出至螢幕上
#write NO.17
#ver1.0
#
clear
read -p "Please enter a directory or file? " chk
echo ""
echo "---------------------------------------------"
test -e $chk && echo -e "$chk\n\tExists~~" || echo -e "$chk\tdoes not exist~~"
echo ""
test -r $chk && echo -e "\tHave read permissions~~" || echo -e "\t\t.\t."
echo ""
test -w $chk && echo -e "\tHave writable permissions~~" || echo -e "\t\t.\t."
echo ""
test -x $chk && echo -e "\tHave executable permissions~~" || echo -e "\t\t.\t."
echo "---------------------------------------------"
echo ""
exit 0
