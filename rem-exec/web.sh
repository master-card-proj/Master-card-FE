#!/bin/bash
#hhis script will install, enable, and start apache web server in redhat, centos, ubuntu and amazon linux.
yum --help
if [ $? -eq 0 ]
then
  sudo yum install httpd wget unzip -y > /dev/null
  sudo systemctl enable httpd
  sudo systemctl start httpd
  sudo systemctl status httpd 

  mkdir /tmp/web
  cd /tmp/web
  sudo wget https://www.tooplate.com/zip-templates/2126_antique_cafe.zip > /dev/null
  sudo unzip 2126_antique_cafe.zip > /dev/null
  sudo cp -r  2126_antique_cafe/* /var/www/html

  # restartin ghttpd service 
  sudo systemctl restart httpd

else
  sudo apt-get update > /dev/null 
  sudo apt-get install apache2 wget unzip -y > /dev/null
  sudo systemctl enable apache2
  sudo systemctl start apache2
  sudo systemctl status apache2

  mkdir /tmp/web
  cd /tmp/web
  sudo wget https://www.tooplate.com/zip-templates/2126_antique_cafe.zip > /dev/null
  sudo unzip 2126_antique_cafe.zip > /dev/null
  sudo cp -r  2126_antique_cafe/* /var/www/html
  # restartin ghttpd service
  sudo systemctl restart apache2
fi
