#!/bin/bash
#Transfer data from local machine to remote machine
echo -e "\e[31m Please enter remote server IP:\e[0m"
read remote_ip
echo -e "\e[32m Please enter username of the remote server\e[0m"
read remote_uname
echo -e "\e[33m please enter source path of the file:\e[0m"
read source_path
echo -e "\e[34m Please enter remote path of the file:\e[0m"
read remote_path
echo -e "\e[35m Uploading files to remote server....\e[0m"
sudo rsync -arvh --sparse --info=progress2 $source_path $remote_uname@$remote_ip:$remote_path
echo -e "\e[36m File upload to remote server completed!\e[0m" 
