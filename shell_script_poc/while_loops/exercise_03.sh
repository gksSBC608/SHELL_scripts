#!/bin/bash

function perf_operations(){

while true
do

read -p "Enter either of 1,2,3,q; q:quit" CHOICE

case ${CHOICE} in

1)
df
;;
2)
uptime
;;
3)
who
;;
q)
break
;;
*)
echo "Invalid option, please enter again"
;;

esac

done
}

perf_operations

