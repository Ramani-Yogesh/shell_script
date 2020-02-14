#!/bin/bash
##Variable Declaration
read -p "Enter the Virtual Machine Name:" name
read -p "Enter the ram size (example: 2048):" ram
read -p "Enter the cpu value (example: 2, default is 1):" cpu
read -p "Enter the OS Variant (example: ubuntu16.04 / ubuntu14.04):" os_variant
read -p "Enter the ISO Path (default path is /opt/ISOs/ubuntu-16.04.6-server-amd64.iso):" iso_path
read -p "Enter the Hard disk size (example: 20.00):" disk_size
read -p "Enter the Description:" description

##Installation
sudo virt-install --virt-type=kvm --name $name --description "$description" --ram $ram --vcpus=$cpu --os-type=Linux --os-variant=$os_variant  --cdrom=$iso_path --disk path=/var/lib/libvirt/images/$name.img,bus=virtio,size=$disk_size --autostart 

