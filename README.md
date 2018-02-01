Unofficial third-party scripts and content for IBM [QRadar Community Edition](https://developer.ibm.com/qradar/ce/).

## Table of Contents
- [Scripts](#scripts)
  * [Installation](#installation)
- [Ansible Playbooks](#playbooks)
  * [Templates](#templates)
- [Resources](#resources)
  * [Resources & Content by IBM](#resources---content-by-ibm)
  * [Unofficial Resources](#unofficial-resources)
- [Disclaimer](#disclaimer)

***

## Scripts

### Installation
The supplied scripts assume you have installed CentOS 7 and obtained an IP Address.

You need to copy the selinux.sh, install.sh, and QRadarCE7_3_0.GA.iso files into the "tmp" directory for these scripts to work correctly.

#### [selinux.sh](https://github.com/josh-morin/qradar-community-edition/blob/master/scripts/selinux.sh)

You will need to run the selinux.sh script before proceeding with install.sh.
1. Automatically disables SELinux and reboot to enforce it.

#### [install.sh](https://github.com/josh-morin/qradar-community-edition/blob/master/scripts/install.sh)
1. Performs update and upgrade to available packages.
2. Disables IPv6 permanently.
3. Creates /media/cdrom directory for the mount.
4. Mounts QRadarCE7_3_0.GA.iso file.
5. Starts QRadar CE installation.

## Playbooks

### Templates
The supplied playbooks assume you have the following setup:
* Python ver 3.6, Ansible ver 2.4, and pyVmomi.

#### [qrce.yml](https://github.com/josh-morin/qradar-community-edition/blob/master/playbooks/qrce.yml)
Creates QRadar CE template for VMware vCenter
* Note: Will add support for mounting QRadarCE7_3_0.GA.iso once [fix arrives](https://github.com/ansible/ansible/issues/21112) in version 2.5.

## Resources

#### Resources & Content by IBM
* [DeveloperWorks](https://ibm.biz/qradarforums)
* [Github](https://github.com/ibm-security-intelligence)
* [Youtube](https://www.youtube.com/user/IBMSecuritySupport)
* [Reddit](https://www.reddit.com/r/QRadar/)

#### Unofficial Resources
* [Jose Bravo Youtube Tutorials](https://www.youtube.com/user/jbravovideos)
* [QRadar Insights Blog](https://qradarinsights.com/)

### Disclaimer
IBM, the IBM logo, and ibm.com are trademarks or registered trademarks of International Business Machines Corp., registered in many jurisdictions worldwide. Other product and service names might be trademarks of IBM or other companies.
