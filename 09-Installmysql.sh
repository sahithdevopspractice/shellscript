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
