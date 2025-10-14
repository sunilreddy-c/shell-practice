#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "ERROR:: please run the script with root access"
    exit 1
else
   echo "you are running with root access"
fi

       
dnf install mysqlwww -y 

if [ $? -ne 0]
then 
    echo "my sqlserver is successfully installed"
else 
    echo "mysql server is not installed "
fi   
