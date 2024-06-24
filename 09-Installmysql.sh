#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo "ERROR:: Run this script with root user access"
    exit 1 # give other than zero.
else
    echo "You are root user"
fi
yum install mysql -y

if [ $? -ne 0 ]
then 
    echo "ERROR:: Installing Msql is Failed"
    exit 1
else 
    echo "Installing MYSql is Success"
fi

yum install git -y
if [ $? -ne 0 ]
then 
    echo "ERROR:: Installing Git is Failed"
    exit 1
else 
    echo "Installing Git is Success"
fi
