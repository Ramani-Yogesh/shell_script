#!/bin/bash
read -p "Enter the hostname: " host
read -p "Enter the user_name add to the $host:" name;
read -p "Allow to use sudo access(yes/no):" sudo;
ping -c3 $host  &> /dev/null
a=$(echo $?)
if [ $a == 0 ]
then
echo "Connecting to $host";
else 
echo "You are not able to connect to the $host, Please Check";
exit 0
fi
a=`ssh rambact@$host "sudo useradd -m -d /home/$name -s /bin/bash $name; sudo echo -e "$name\n$name" | sudo passwd $name;  if [[ $sudo == yes ]] ; then ; sudo echo "$name  ALL=(ALL:ALL) ALL" >> /etc/sudoers; else; exit 0;"` 
#user=`ls /home`
#for i in $user
#do
#if [[ $i == $name ]]
#then
#echo "$name user is already exists in $host"
#exit 0
#fi
#done
#echo "Assigned default password to user $name";
#echo "Given sudo access to $name"
#else
#echo "User $name is added successfully"
#exit 0
#fi
echo "User $name is added successfully"
exit;
