#!/bin/bash
a=`ls /home`
hostname=`hostname`
echo -e "Users list of ${hostname} is :\n\n${a}";
echo -e "\n\n";
echo -e "Sudo User Details:\n"
for n in $a
do
b=`sudo grep $n /etc/sudoers`
c=`echo $?`
if [[ $c -eq 0 ]] 
then
echo  "$n is a sudo user -  $b"
else
echo  "$n is not a sudo user "
fi
done
