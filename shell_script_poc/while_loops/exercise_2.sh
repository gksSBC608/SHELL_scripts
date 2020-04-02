#!/bin/bash

function read_number_of_lines(){

file=$1
MAX_LINES=$2
LINE_NUM=1
while read line
do
echo "${LINE_NUM} : ${line}"
LINE_NUM=$(( $LINE_NUM +1))
echo "After increment operation LINE_NUM becomes ${LINE_NUM}"
if [ ${LINE_NUM} -gt ${MAX_LINES} ]
then
break
fi

done < ${file}

}

read_number_of_lines /etc/passwd 10

