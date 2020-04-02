#!/bin/bash

function files_count_1(){
local dir_path=$1
echo ${dir_path}
local f_count=$(find ${dir_path} -type f -print | wc -l)
echo "Number of files in ${dir_path} directory is : ${f_count}"
return 3
}

#files_count_1 C:\\MOSIP_PT\SHELL\ Scripts\Practice\Exercise\ 03_Functions
dir=C:/MOSIP_PT/Logs
echo "parameter to be passed is $dir"
files_count_1 $dir
#echo $?
echo "Data returned from the function file_count is $?"
#echo $?