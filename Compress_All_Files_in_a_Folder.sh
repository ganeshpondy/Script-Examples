#!/bin/bash

#script that takes a directory as input and compresses all the files in the directory into a single archive file.

read -r -p "Enter the Directory to ZIP all the Files: " user_dir
#user_dir="/mnt/c/GaneshB/DRIVE/DevOps/SandipDas/LAB/5-compress"

#To Validate the input Path
[ -d "$user_dir" ] || { echo "Input Path is not found. Please Enter Proper Path"; exit; }

tar_name=$(basename "$user_dir")
#echo "$tar_name"

cd "$user_dir" && tar -zcvf "$tar_name".tar.gz ./* || echo "path not available" 

echo "###############################################"
echo "Files are Zipped in $tar_name.tar.gz name"
echo "###############################################"

#TO unZip and Extract all files
#gunzip -c 5-compress.tar.gz | tar xvf -
#gunzip -c "$tar_name".tar.gz | tar xvf -

