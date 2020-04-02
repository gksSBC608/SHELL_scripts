#!/bin/bash

function file_count(){
local files_count=$(ls -1 | wc -l)
global_var=10
echo "Number of files in current directory is : $files_count"
return 10
}

function files_count_1(){
local f_count=$(find . -type f -print | wc -l)
echo "Number of files in current directory is : $f_count"
return 3
}

echo "Function is being called"
file_count
echo $?
echo "Function call over"
echo "Local variable files_count when accessed outside the function has value, $files_count"
echo "Global variable global_var has value $global_var"
echo "Data returned from the function file_count is $?"
echo "Second function being called to count files"
files_count_1
echo $?
echo "Data returned from the function file_count is $?"
echo $?