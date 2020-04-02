#!/bin/bash

ping 'www.facebook.com'
status=$?
if [ $status -eq 0 ]
then
echo "Command succeeded"
elif [ $status eq 1 ]
then
echo "Command failed with error code 1"
else
echo "Command failed with some code other than 0 or 1"
fi

