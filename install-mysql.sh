#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ] 
then
    echo "Error: please run this script with root user"
    exit 1
else
    echo "You are root user, proceeding with installation"
fi

yum install mysql -y

if [ $? -ne 0 ]
then
    echo "ERROR:: Installing MySQL is failed"
    exit 1
else
    echo "Installing MySQL is SUCCESS"
fi

yum install git -y

if [ $? -ne 0 ]
then
    echo "ERROR:: Installing GIT is failed"
    exit 1
else
    echo "Installing GIT is SUCCESS"
fi