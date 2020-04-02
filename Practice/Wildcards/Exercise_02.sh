#!/bin/bash
function modify_file_name(){
local dir_path=$1
cd ${dir_path}
read -p "Enter file extension: " ext
if [ "jpg" == ${ext} ]
then
echo "jpg extension"
append_prefix jpg
elif [ "png" == ${ext} ]
then
echo "png extension"
fi
echo "\nList of files after the operation:\n"
ls
}

function append_prefix(){

postfix=$1
for file in *.${postfix}
do
echo "=================================================================================="
echo "File name is ${file}"
read -p "Enter prefix to prepend " prefix
echo "Prefix entered is ${prefix}"
if [ "" == ${prefix} ]
then
echo "User didn't enter anything, prefix will be the current time"
local curr_date=$(date '+%Y-%m-%dT%H:%M:%S:%N')
new_file_name=${curr_date}.${postfix}
echo "New file name is ${new_file_name}"
else
echo "User has entered something, prefix will not be the current timestamp, but ${prefix}"
new_file_name=${prefix}.${postfix}
echo "New file name when user has entered something is to be : $new_file_name"
fi
mv ${file} ${new_file_name}
echo "===============================End of for loop body================================="
done

}

dir=/home/madmin/Images
modify_file_name $dir
