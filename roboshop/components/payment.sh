#!/bin/bash

set -e 

source components/common.sh

COMPONENT=payment

# Calling PYTHON function
# PYTHON

echo -n "Installing Pyhton:"
yum install python36 gcc python3-devel -y &>> ${LOGFILE} 
stat $? 

USER_SETUP

