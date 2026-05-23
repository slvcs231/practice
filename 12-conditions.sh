#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
   echo "ERROR:: Please execute script with root previlige"
fi

yum install mysql -y
if [ $? -ne 0 ]; then
    echo "ERROR:: Installing MYSQL is failure"
else
    echo "Mysql installation is success"
fi