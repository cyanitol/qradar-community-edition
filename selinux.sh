#!/bin/bash

# Disable SELinux and reboot
echo -e "\e[31mDisabling SELinux & Rebooting...\e[0m"
sleep 2s 
sed -i 's/^SELINUX=.*/SELINUX=disabled/g' /etc/selinux/config && cat /etc/selinux/config && reboot