#! bin/bash 
yum update 
# importing the GPG keys of the TeamViewer 
sudo rpm --import  https://dl.tvcdn.de/download/linux/signature/TeamViewer2017.asc 
# install EPEL package 
sudo yum install epel-release -y
# Download TeamViewer
wget https://download.teamviewer.com/download/linux/teamviewer.x86_64.rpm
# Installation 
sudo yum localinstall ./teamviewer.x86_64.rpm  -y 

# set passwd

teamviewer passwd  admin123

# show team viewer ID
teamviewer info |grep ID|cut -d":" -f 2|sed -e "2,3d"|tee ID.txt

echo "this is team viewer ID, please send it to haitham"
cat ID.txt







