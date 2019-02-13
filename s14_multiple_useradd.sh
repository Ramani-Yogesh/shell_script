#!/bin/bash
a=`cat /home/rambact/users.txt`
for name in $a
do
sudo useradd -m -d /home/$name -s /bin/bash $name
sudo echo -e "$name\n$name" | sudo passwd $name &> /dev/null
echo -e "$name is added\n" 
done
echo -e "Users List\n $a"
read -p "The above users are in  the list, You want any user to add to sudo group(yes/no):" sudo 
if [[ $sudo == yes ]]
then
read -p "Enter the user name:" user
x=`sudo echo "$user   ALL=(ALL:ALL) ALL" >> /etc/sudoers`
echo "User $user is successfully added to sudoers file"
else
echo "Thank You"
exit 0
fi



##a=`cut -d ":" -f 1-3 /etc/passwd | grep 100`
#a=`cat /etc/passwd | grep 100`

