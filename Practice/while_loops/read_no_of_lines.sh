#!/bin/bash

function read_number_of_lines(){

file=$1
MAX_LINES=$2
while read line
do
echo "${LINE_NUM} : ${line}"
LINE_NUM=$(( $LINE_NUM +1))
if [ ${LINE_NUM} <= ${MAX_LINES} ]
then
break
fi
done < ${file}

}

read_number_of_lines /etc/passwd 2

