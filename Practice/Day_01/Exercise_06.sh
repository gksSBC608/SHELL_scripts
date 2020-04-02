#!/bin/bash
read -p "Enter file name:- " FILE
if [ -d "$FILE" ]; then
    echo "$FILE is directory"
elif [ -f "$FILE" ]; then 
    echo "$FILE is a normal file"
else
	echo "$FILE is other than file or directory"
fi
cmd_res=$(ls -l $FILE)
echo $cmd_res

