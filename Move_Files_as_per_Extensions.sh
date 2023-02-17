#!/bin/bash

#script that searches a directory for files with a specific extension and moves them to a new directory.

read -r -p "Enter the Directory for reorg: " user_dir
read -r -p "Enter the File Formats with Space: " file_formats

echo "File Re-Org is runing on dir {$user_dir}"
#pdf txt docx

#find "$user_dir" -maxdepth 1 -name "*.pdf" -print0 | xargs -0 -I {} mv {} "$user_dir"/pdf/

for file_type in $file_formats;
do
    #echo "$file_type"
    find "$user_dir" -maxdepth 1 -name "*.$file_type" -print0 | xargs -0 -I {} mv {} "$user_dir"/"$file_type"/
    echo "File Re-Org Completed for $file_type files"
done

