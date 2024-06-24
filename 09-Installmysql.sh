#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo "ERROR:: Run this script with root user access"
else
    echo "You are root user"
fi
yum install mysql -y
