#!/bin/bash

# Description: This script will list the users and sudo users list of the servers

# Script Usage
     # chmod +x users_list.sh
     # sudo ./users_list.sh
# Note:
     # -

##Globel Variables 
passwd_file=$(cat /etc/passwd | awk -F: '{print $1}' > /tmp/u_list.txt)
home_dir=$(ls /home > /tmp/h_list.txt)
users_list=$(grep -f /tmp/u_list.txt /tmp/h_list.txt)
hostname=$(hostname)

##Print the list of users
echo -e "Users list of ${hostname} is :\n\n${users_list}";
echo -e "\n";
##Print the Sudo users
echo -e "Sudo Users Details:\n"
for n in $users_list
do
sudo_users=$(sudo grep "$n" /etc/sudoers)
output=`echo $?`
if [[ $output -eq 0 ]]
then
echo -e "\033[1;33m$n,Yes\033[0m"
else
echo -e "\033[1;31m$n,No\033[0m"
fi
done
