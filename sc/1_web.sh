#!/bin/bash
#this script will install, enable, and start apache web server in redhat, centos and amazon linux.
sudo yum install httpd -y
sudo systemctl enable httpd
sudo systemctl start httpd
sudo systemctl status httpd

