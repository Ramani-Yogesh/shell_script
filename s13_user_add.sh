#!/bin/bash
read -p "Enter the user_name:" name;
user=`ls /home`
for i in $user
do
if [[ $i == $name ]]
then
echo "$name user is already exists"
exit 0 
fi
done
a=`sudo useradd -m -d /home/$name -s /bin/bash $name &> /dev/null`
b=`sudo echo -e "$name\n$name" | sudo passwd $name &> /dev/null`  ##Here Password is same as user name, we can change as per our need.
echo "Assigned default password to user $name";
read -p "Allow to use sudo access(yes/no):" sudo;
if [[ $sudo == yes ]] 
then 
c=`sudo echo "$name  ALL=(ALL:ALL) ALL" >> /etc/sudoers`
echo "Given sudo access to $name"
else
echo "User $name is added successfully"
exit 0 
fi
echo "User $name is added successfully"

