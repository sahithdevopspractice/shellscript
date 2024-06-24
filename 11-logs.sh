#!/bin/bash

ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"
R="\e[31m"
G="\e[32m"
N="\e[0m"

echo "Script Started Ececuting at $TIMESTAMP" &>> LOGFILE

VALIDATE(){
if [ $1 -ne 0 ]
    then
    echo -e "$R ERROR:: $2... FAILED $N"
    exit 1
else
    echo -e "$G $2.... SUCCESS $N"
fi
}

if [ $ID -ne 0 ]
then
    echo -e "$R ERROR:: Run this script with root user access $N"
    exit 1 # give other than zero.
else
    echo "$G You are root user $N"
fi

# yum install mysql -y
# VALIDATE
# yum install git -y
# VALIDATE

yum install mysql -y &>> $LOGFILE
VALIDATE $? "Installing MySQL"
yum install git -y &>> $LOGFILE
VALIDATE $? "Installing GIT"