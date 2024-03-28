#!/bin/bash

ID=$(id -u)

if [ ID ne 0 ] 
then
    echo "Error: please execute with root user"
    exit 1
else
    echo "proceeding with installation"
fi

VALIDATE ()
    {
        if [ $? ne 0 ] 
        then
            echo "Error: Installation is not successful"
        else
            echo "Installation is success"
        fi
    }

yum install mysql -y

VALIDATE()
