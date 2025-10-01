#!/bin/bash
r="\e[31m"
g="\e[32m"
y="\e[33m"
n="\e[0m"
LOGS_FOLDER="/var/log/shell-script"
SCRIPT_NAME=$( echo $0 | cut -d "." -f1 )
LOG_FILE="$LOGS_FOLDER/$SCRIPT_NAME.log"

mkdir -p $LOGS_FOLDER
touch $LOG_FILE

#echo "script started at $(date)"

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

for package in $@
do
    dnf list installed "$package" &>>$LOG_FILE

    if [ $? -ne 0 ]; then
       dnf install "$package" -y &>>$LOG_FILE
       VALIDATE $? "$package"
    else
         echo -e "$package already installed $n" | tee -a $ 
    fi
done