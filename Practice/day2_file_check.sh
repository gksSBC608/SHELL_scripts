#!/bin/bash
read -p "Enter file name:- " FILE
if [ -d "$FILE" ]; then
echo "$FILE is a directory"
exit 3
elif [ -f "$FILE" ]; then 
echo "$FILE is a normal file"
exit 2
else
echo "$FILE is other than file or directory"
exit 4
fi
