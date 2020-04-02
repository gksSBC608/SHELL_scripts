
#!/bin/bash

function png_file_exists(){
local dir_path=/home/madmin/Images
local files_count=$(find ${dir_path} -name "*.png" -type f -print | wc -l)
if [ $files_count -ge 1 ]
then
echo "png file count is 1 or more"
rename_png_files $dir_path
return $?
else
echo "No png file found in th ecurrent working directory"
return 1

fi
}

function jpg_file_exists(){
local dir_path=/home/madmin/Images
local files_count=$(find ${dir_path} -name "*.jpg" -type f -print | wc -l)
if [ $files_count == 0 ]
then
echo "0 files found with jpg extension"
return 1
else
rename_jpg_files $dir_path
return $?
fi
}

function rename_jpg_files(){
local dir_path=$1
cd $dir_path
echo "rename_files function invoked"
for file in *.jpg
do
echo $file
curr_date=$(date '+%Y-%m-%dT%H:%M:%S')
echo ${curr_date}
mv ${file} ${curr_date}.jpg
done
}


function rename_png_files(){
local dir_path=$1
cd $dir_path
echo "rename_files function invoked"
for file in *.png
do
echo $file
curr_date=$(date '+%Y-%m-%dT%H:%M:%S')
echo ${curr_date}
mv ${file} ${curr_date}.png
done
}

png_file_exists
echo $?

#jpg_file_exists
#echo $?

