#!/bin/bash

USER=$(id -u)

if [ $USER -ne 0]; then
   echo "Please run this script as root or using sudo."
    exit 1
fi

dnf install mysql -y

if [ $? -ne 0 ]; then
    echo "MySQL installation failed. Please check your network connection and try again."
else
    echo "MySQL installed successfully."
fi
