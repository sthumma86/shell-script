#!/bin/bash

ID=$(id -u)

if [ $ID ne 0 ] 
then
    echo "Error: please execute with root user"
    exit 1
else
    echo "You are root user, proceeding with installation"
fi

yum install git -y

