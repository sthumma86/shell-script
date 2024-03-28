#!/bin/bash


if [ id ne 0] then
    echo "Error: please execute with root user"
else
    echo "proceeding with installation"
fi

VALIDATE ()
    {
        if [ $? ne 0 ] then
            echo "Error: Installation is not succesful"
        else
            echo "Installation is success"
    }

yum install mysql -y

VALIDATE()
