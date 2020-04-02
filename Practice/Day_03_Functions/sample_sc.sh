#!/bin/bash

function files_count_1(){
local dir_path=$1
local f_count=$(find ${dir_path} -type f -print | wc -l)
echo "Number of files in the directory is : $f_count"
return 3
}

dir=C:/MOSIP_PT/Logs
echo "Function being called to count files"
files_count_1 $dir
echo $?