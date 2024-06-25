#!/bin/bash

ID=$(id -u)

IMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

VALIDATE(){
 if [ $1 -ne 0 ]
 then
 echo  -e "$2 ... $R FIALED $N" &>>LOGFILE
 else 
 echo -e "$2 ... $G SUCCESS $N" &>>LOGFILE
fi
}


if [ $ID -ne 0 ]
then 
    echo -e "$R ERROR::Please run this script with root access $N"
    exit 1 
else 
    echo "you are root user"
fi

echo "All Arguments passed:$@"


for package in $@
    do
        yum list installed $package
        if [ $? -ne 0 ]
        then 
        yum install $package -y
        VALIDATE $? "Installation of $package"
        else
            echo -e "Installation of $package is $Y success $N"
        fi
    done
