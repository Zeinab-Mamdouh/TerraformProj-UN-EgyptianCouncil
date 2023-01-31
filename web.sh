#!/bin/bash
apt update -y
apt install wget unzip httpd -y
systemctl start httpd
systemctl enable httpd
wget https://www.tooplate.com/zip-templates/2101_insertion.zip
unzip -o 2101_insertion.zip
cp -r 2101_insertion/* /var/www/html/
systemctl restart httpd