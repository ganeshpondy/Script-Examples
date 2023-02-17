#!/bin/bash

#script that takes a text file as input and outputs a summary of the most common words and their frequency

read -r -p "Enter the File name: " file_name

#echo "$file_name"
#cat $file_name | tr ' ' '\n' | sort | uniq -c 
cat $file_name | tr ' ' '\n' | sort | uniq -c | sort -nr | head
