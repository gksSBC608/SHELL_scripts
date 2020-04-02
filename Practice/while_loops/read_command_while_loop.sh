#!/bin/bash

LINE_NUM=1
ps -ef | grep pty1 | while read line
do
echo "${line}"
#awk '{print $0}'
#awk -F' ' '{print $2}'

#v=$((${line}|"grep -P '^madmin\s+(\d+)\s+.*pty1.*$' -o"))
#echo $v
echo ${line}|grep -P '^madmin\s+(\d+)\s+.*pty1.*$' -o
LINE_NUM=$(( $LINE_NUM +1))
done