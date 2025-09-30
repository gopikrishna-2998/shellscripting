#!/bin/bash

USER=$(id -u)

if [ $USER -ne 0]; then
   echo "Please run this script as root or using sudo."
    exit 1
fi

dnf install mysql -y

if [ $? -ne 0 ]; then  #$? checks the exit status of the last command
    echo "MySQL installation failed. Please check your network connection and try again."
    exit 1
else
    echo "MySQL installed successfully."
fi
