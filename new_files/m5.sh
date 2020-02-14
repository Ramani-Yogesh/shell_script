#!/bin/bash
a=$(cat /etc/passwd | awk -F: '{print $1}' > /tmp/u_list.txt)
z=$(ls /home > /tmp/h_list.txt)
d=$(grep -f /tmp/u_list.txt /tmp/h_list.txt)
hostname=$(hostname)
echo -e "Users list of ${hostname} is :\n\n${d}";
echo -e "\n";
echo -e "Sudo User Details:\n"
for n in $d
do
b=$(sudo grep "$n" /etc/sudoers)
c=`echo $?`
if [[ $c -eq 0 ]]
then
printf  "\033[1;33m$n,Yes\033[0m\n"
else
printf  "\033[1;31m$n,No\033[0m\n"
fi
done
#f=`grep "sudo" /etc/group | awk -F: '{print $4}'`
#echo "$f,Yes";
