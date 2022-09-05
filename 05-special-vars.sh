#!/bin/bash 

#  Here are the special variables 

#  $0          : This will gives the name of the script you're running 
#  $1 to $9    :You can pass a maximum of 9 variables from the command line when you're running the script 
#  $* 
#  $@ 
#  $# 
#  $$ 

a=10 
b=$1


echo value of a is : $a 
echo value of b is : $b 