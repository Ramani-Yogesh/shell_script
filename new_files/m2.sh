#!/bin/bash
a=`ls /home`
hostname=`hostname`
echo -e "Users list of ${hostname} is :\n\n${a}";
echo -e "\n";
echo -e "Sudo User Details:\n"
for n in $a
do
b=`sudo grep $n /etc/sudoers` 
c=`echo $?`
if [[ $c -eq 0 ]] 
then
printf  "\033[1;33m$n - $n is a sudo user\033[0m\n"
else
printf  "\033[1;31m$n - $n is not a sudo user\033[0m\n"
fi
done

#"\033[1;33mThis is red text\033[0m\n"
