#!/bin/bash
#echo "enter your package name"
#    read name
#    dpkg -s $name &> /dev/null  
#    if [ $? -ne 0 ]
#        then
#            echo "not installed"  
#            apt-get update
#            apt-get install $name
#
#        else
#            echo "allready installed..."
#     fi	    
read -p "Please enter service name: " service_name
#echo $service_name
status=$(systemctl status $service_name | awk 'NR==3 {print $2}')
echo -e "\e[34mThe current status of $service_name is:\e[0m \e[31;5m$status\e[0m"
