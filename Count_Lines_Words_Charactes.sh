#!/bin/bash
#script that takes a filename as input and counts the number of lines, words, and characters in the file.

read -r -p "Enter the File Name: " user_file
#user_file=sample_file.txt
#echo "$user_file"
[ -f "$user_file" ] || { echo "Input File is not found. Please Enter Proper File Name"; exit; }

line_count=$(wc --line "$user_file" | awk '{print $1}')
word_count=$(wc --words "$user_file" | awk '{print $1}')
character_count=$(wc --chars "$user_file" | awk '{print $1}')

echo -e "number of line = ${line_count}"
echo -e "number of Words = ${word_count}"
echo -e "number of Characters = ${character_count}"

