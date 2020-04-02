#!/bin/bash
# This SHELL script takes thread dump specific number of times as passed in argument
# First parameter is the PID of a java process
# Second parameter i sthe number of times, the thread dump should be taken
# Third argument is the time interval between two thread dumps
#pid=$1
set -x
pid=$(ps aux | grep java| grep -v grep | awk '{print $2}')
COUNT=1
MAX_COUNT=$2
TIME_INTERVAL=$3
while [ ${COUNT} -le ${MAX_COUNT} ]
do
#echo "index is ${COUNT}"
#echo
jstack -l ${pid} > dumps/thread_dump_${COUNT}.log
sleep ${TIME_INTERVAL};
COUNT=$(( $COUNT+1))
echo
#echo  "Index updated to $COUNT"
#echo
done
