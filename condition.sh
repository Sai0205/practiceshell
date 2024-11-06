#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then  
    echo "please run with root user"
    exit 1
fi    

yum install mysql -y

if [ $? -ne 0 ]
then
    echo "installation of mysql is error"
    exit 1
else 
    echo "sucess"
fi   

yum install postfix -y

if [ $? -ne 0 ]
then 
    echo "error postfix"
    exit 1
else  
    echo "sucess"
fi  

