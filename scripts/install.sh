#!/bin/bash

# MIT License

# Copyright (c) 2017 Joshua Morin

# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:

# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.


#update and upgrade packages
echo -e "\e[31mPerforming Update and Upgrade of Packages...\e[0m"
yum -y update && yum -y upgrade 
sleep 2s 

#disable IPv6
echo -e "\e[31mPermanently Disabling IPv6...\e[0m"
echo "net.ipv6.conf.all.disable_ipv6 = 1" >> /etc/sysctl.conf
sleep 2s

#making /media/cdrom directory
echo -e "\e[31mCreating /media/cdrom Directory...\e[0m"
mkdir -p /media/cdrom
sleep 2s

#mount the qradar community edition iso
echo -e "\e[31mMounting QRadar CE ISO File...\e[0m"
sudo mount -o loop /tmp/QRadarCE7_3_0.GA.iso /media/cdrom
sleep 2s 

#starting installation
echo -e "\e[31mStarting Installation\e[0m"
/media/cdrom/setup
