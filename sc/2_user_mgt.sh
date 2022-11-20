#!/bin/sh
<<COMMENT
  This is a script that creates a user and password 
  in linux os system
COMMENT

echo "pls enter the name u wish to be created in the system"
read username
echo "pls enter the desired password"
read -s pw

sudo useradd $username
echo "$pw" | sudo passwd "$username" --stdin
echo "$username has been created successfully"

