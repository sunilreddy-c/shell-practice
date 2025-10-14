#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "ERROR:: please run the script with root access"
    exit1
else
   echo "you are running with root access"
fi       

VALIDATE (){
     if [ $1 -eq 0]
    then 
        echo "my $2 is successfully installed"
    else 
        echo "$2 server is not installed "
        exit 1
}

dnf list installed mysql

if [ $? -ne 0 ]
then 
    echo "mysql is not installed going  to install"
    dnf install mysql -y
    VALIDATE $? "mySQL"
else 
        echo "mysql is already installed nothing to do"
        exit 1
fi    

dnf list installed python3

if [ $? -ne 0 ]
then 
    echo "python3 is not installed going  to install"
    dnf install python -y
   VALIDATE $? "python3"
else 
        echo "python3 is already installed nothing to do"
        exit 1
fi 

dnf list installed nginx

if [ $? -ne 0 ]
then 
    echo "nginx is not installed going  to install"
    dnf install nginx -y
    VALIDATE $? "nginx"
    fi
else 
        echo "nginx is already installed nothing to do"
        exit 1
fi 
