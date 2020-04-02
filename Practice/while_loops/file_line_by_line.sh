#!/bin/bash

LINE_NUM=1

while read line
do
echo "${LINE_NUM} : ${line}"
LINE_NUM=$(( $LINE_NUM +1))
done < /etc/passwd

