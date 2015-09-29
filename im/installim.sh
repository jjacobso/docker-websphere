#!/bin/bash
echo "IBM IM install script"
# sets download root url
# this is somewhere in your LAN where you keep the IBM
# repository zip files
IMURL=http://192.168.101.2:8080

# install wget and unzip
yum update -y && yum install -y unzip wget

# Create user&group
groupadd -r wasadmin && useradd -r -g wasadmin wasadmin

# downloads IM setup zip file
wget $IMURL/agent.installer.linux.gtk.x86_64_1.8.0.20140902_1503.zip -O /opt/im.zip
cd /opt
mkdir iminstall
echo "unzip Installation Manager"
unzip -q im.zip -d iminstall
rm im.zip
cd iminstall
#ln -s jre_6.0.0.sr9_20110208_03/ jre
echo "Start Installation Manager install"
./installc -log /opt/im_install.log -acceptLicense
echo "Cleanup Installation Manager install"
cd /opt
rm -Rf iminstall/
rm -f im_install.log
chown -R wasadmin:wasadmin IBM
#./iminstall/tools/imcl -acceptLicense -showProgress input /home/core/was855/was85.rsp -log ./teste.log
