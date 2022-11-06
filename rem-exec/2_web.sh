#!/bin/bash
#this script will install, enable, and start apache web server in redhat, centos and amazon linux.
sudo yum install httpd wget unzip -y
sudo systemctl enable httpd
sudo systemctl start httpd
sudo systemctl status httpd

mkdir /tmp/web
cd /tmp/web
sudo wget https://www.tooplate.com/zip-templates/2126_antique_cafe.zip
sudo unzip 2126_antique_cafe.zip
sudo cp -r  2126_antique_cafe/* /var/www/html

# restartin ghttpd service 
sudo systemctl restart httpd
