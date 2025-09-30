#!/bin/bash

r="\e[31m"
g="\e[32m"
y="\e[33m"
n="\e[0m"

USERID=$(id -u)
if [ $USERID -ne 0 ]; then
    echo -e " $g pleae run this script as root user $n"
    exit 1
fi

VALIDATE() {
    if [ $1 -ne 0 ]; then
        echo -e " $r $2 installation failed $n"
        exit 1
    else
        echo -e " $g $2 installed successfully $n"
    fi
}

dnf install mysql -y  # install mysql
if [ $? -ne 0 ]; then
    echo -e " $r mysql installation failed $n"
    VALIDATE $? "mysql"
else
    echo -e " $g mysql installed successfully $n"
fi


dnf install nginx -y
if [ $? -ne 0 ]; then
    echo -e " $r nginx installation failed $n"
    VALIDATE $? "nginx"
else
    echo -e " $g nginx installed successfully $n"
fi

dnf install python3 -y
if [ $? -ne 0 ]; then
    echo -e " $r python3 installation failed $n"
    VALIDATE $? "python3"
else
    echo -e " $g python3 installed successfully $n"
fi
