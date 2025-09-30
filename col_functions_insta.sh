#!/bin/bash

r="\e[31m"
g="\e[32m"
y="\e[33m"
n="\e[0m"

USERID=$(id -u)
if [ $USERID -ne 0 ]; then
    echo " $g pleae run this script as root user $n"
    exit 1
fi

VALIDATE() {
    if [ $1 -ne 0 ]; then
        echo " $r $2 installation failed $n"
        exit 1
    else
        echo " $g $2 installed successfully $n"
    fi
}

dnf install mysql -y  # install mysql
if [ $? -ne 0 ]; then
    echo " $r mysql installation failed $n"
    VALIDATE $? "mysql"
else
    echo " $g mysql installed successfully $n"
fi


dnf install nginx -y
if [ $? -ne 0 ]; then
    echo " $r nginx installation failed $n"
    VALIDATE $? "nginx"
else
    echo " $g nginx installed successfully $n"
fi

dnf install python3 -y
if [ $? -ne 0 ]; then
    echo " $r python3 installation failed $n"
    VALIDATE $? "python3"
else
    echo " $g python3 installed successfully $n"
fi
