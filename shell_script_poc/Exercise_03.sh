#!/bin/bash
FILE="Exercise_01.sh"
echo $FILE
if [ -f "$FILE" ]; then
    echo "$FILE exist"
else 
    echo "$FILE does not exist"
fi

