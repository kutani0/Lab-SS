#!/bin/bash
#des
#write NO.17
#ver1.0
#
clear
echo -e "==================\n"
echo -e "clear yum cathe...\n" && echo -e "==================\n" && yum clean all && clear
echo -e "==================\n"
echo -e "repolist....\n" && echo -e "==================\n" && yum repolist && clear
echo -e "==================\n"
echo -e "check update list...\n" && echo -e "==================\n" && yum check-update && clear
echo -e "==================\n"
echo -e "yum list...\n" && echo -e "==================\n" && yum list && clear
echo -e "==================\n"
echo -e "yum update...\n" && echo -e "==================\n" && yum update && clear
echo -e "==================\n"
echo -e "complete~~~\n"
echo -e "==================\n"

exit 0
