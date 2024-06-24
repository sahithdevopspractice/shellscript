#!/bin/bash

ID=$(id -u)

VALIDATE(){
    if [ $? -ne 0 ]
        then 
            echo "ERROR:: Installing  is Failed"
            exit 1
        else 
            echo "Installing  is Success"
    fi
}

if [ $ID -ne 0 ]
then
    echo "ERROR:: Run this script with root user access"
    exit 1 # give other than zero.
else
    echo "You are root user"
fi

yum install mysql -y
VALIDATE
yum insall git -y
VALIDATE