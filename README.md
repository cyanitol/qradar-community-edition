Unofficial third-party scripts and content for IBM [QRadar Community Edition](https://developer.ibm.com/qradar/ce/).

## Table of Contents
- [Scripts](#scripts)
  * [Installation](#installation)
  * [QRadar SMS Notification](#qradar-sms-notification)
- [Resources](#resources)
  * [Resourcess & Content by IBM](#resourcess---content-by-ibm)
  * [Unofficial Resources](#unofficial-resources)
- [Disclaimer](#disclaimer)

***

## Scripts

### Installation 
The supplied scripts assume you have installed CentOS 7 and obtained an IP Address. 

You need to copy the selinux.sh, install.sh, and  QRadarCE7_3_0_20171013140512.GA.iso files into the "tmp" directory for these scripts to work correctly. 

[selinux.sh](https://github.com/josh-morin/qradar-community-edition/blob/master/selinux.sh)

You will need to run the selinux.sh script before proceeding with install.sh.
1. Automatically disables SELinux and reboot to enforce it. 

[install.sh](https://github.com/josh-morin/qradar-community-edition/blob/master/install.sh) 
1. Performs update and upgrade to available packages.
2. Disables IPv6 permanently. 
3. Creates /media/cdrom directory for the mount.
4. Mounts QRadarCE7_3_0_20171013140512.GA.iso file.
5. Starts QRadar CE installation. 

### QRadar SMS Notification 
Send text messages from QRadar ”Custom Actions” using Twilio API in a bash file.
Working file:[sms.sh](https://github.com/josh-morin/qradar-community-edition/blob/master/sms.sh).

#### Getting Started 
1. Create an account from http://www.twilio.com
2. Retrieve Phone number, Id, and Token generated under your dashboard.
3. Apply Phone number, Id, and Token into script.
4. Call script into QRadar.

#### QRadar Setup
1. Go to _Admin_ tab and select _Define Actions_ under _Custom Actions_
2. Select _Add_ from top menu options.
3. Provide the following:
   * Name
   * Description
   * Interpreter: Bash
   * Upload SMS Bash/Curl script
   * Parameter Name
   * Fix Property Value
4. Click _Add_
5. Click _Save_

#### Notes 
* Uploaded script can found in the following QRadar directory: /opt/qradar/bin/ca_jail/custom_action_scripts.
* Check the Twilio SSL certificate options on the website.
* Use Unix/Linux line feed if editing or modifying script.


## Resources 

### Resourcess & Content by IBM
* [DeveloperWorks](https://ibm.biz/qradarforums)
* [Github](https://github.com/ibm-security-intelligence)
* [Youtube](https://www.youtube.com/user/IBMSecuritySupport)
* [Reddit](https://www.reddit.com/r/QRadar/)

### Unofficial Resources 
* [Jose Bravo Youtube Tutorials](https://www.youtube.com/user/jbravovideos)
* [QRadar Insights Blog](https://qradarinsights.com/)

## Disclaimer 
IBM, the IBM logo, and ibm.com are trademarks or registered trademarks of International Business Machines Corp., registered in many jurisdictions worldwide. Other product and service names might be trademarks of IBM or other companies. 
