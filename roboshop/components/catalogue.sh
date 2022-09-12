#!/bin/bash

set -e 

source components/common.sh

COMPONENT=catalogue

# Calling NODEJS function
NODEJS


CONFIG_SVC 
echo -n "Configuring the Systemd file: "
sed -i -e 's/MONGO_DNSNAME/mongodb.roboshop.internal/' /home/${FUSER}/${COMPONENT}/systemd.service 
mv /home/${FUSER}/${COMPONENT}/systemd.service /etc/systemd/system/${COMPONENT}.service
stat $? 

echo -n "Starting the service"
systemctl daemon-reload  &>> /tmp/${COMPONENT}.log 
systemctl enable ${COMPONENT} &>> /tmp/${COMPONENT}.log
systemctl start ${COMPONENT} &>> /tmp/${COMPONENT}.log
stat $?


