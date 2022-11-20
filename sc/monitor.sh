#!/bin/bash

#this script monitor httpd service in linux

sudo ls /var/run/httpd/httpd.pid

if [ $? -eq 0 ]
then
  echo "httpd service is running"
else
  echo "httpd servixce is not running"
  sleep 2 
  echo "starting httpd service"
  sudo systemctl start httpd

  if [ $? -eq 0 ]
  then
    echo "the service started successfully"
  else
    echo "service failed to start"
    echo "contact admin for support"
  fi

fi

