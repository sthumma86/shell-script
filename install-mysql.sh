#!/bin/bash

ID=$(id -u)

if [ ID ne 0 ] 
then
    echo "Error: please execute with root user"
    exit 1
else
    echo "You are root user, proceeding with installation"
fi

VALIDATE(){
        if [ $? ne 0 ] 
        then
            echo "Error: Installation of MYSQL is not successful"
            exit 1
        else
            echo "Installation is success"
        fi
    }

yum install mysql -y

VALIDATE
