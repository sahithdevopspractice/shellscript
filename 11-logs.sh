#!/bin/bash

ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"

echo "script name: $0"
 
VALIDATE(){
if [ $1 -ne 0 ]
    then
    echo "ERROR:: $2... FAILED"
    exit 1
else
    echo "$2.... SUCCESS"
fi
}

if [ $ID -ne 0 ]
then
    echo "ERROR:: Run this script with root user access"
    exit 1 # give other than zero.
else
    echo "You are root user"
fi

# yum install mysql -y
# VALIDATE
# yum install git -y
# VALIDATE

yum install mysql -y &>> $LOGFILE
VALIDATE $? "Installing MySQL"
yum install git -y &>> $LOGFILE
VALIDATE $? "Installing GIT"