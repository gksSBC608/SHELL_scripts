#!/bin/bash
declare -a arr=(man bear pig dog cat sheep)
#arraylength=${#arr[@]}
#echo $arraylength
for item in "${arr[@]}" ;
do
echo $item
done
for i in "${!arr[@]}"; do 
  printf "%s\t%s\n" "$i" "${arr[$i]}"
done
