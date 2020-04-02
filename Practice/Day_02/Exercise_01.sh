#!/bin/bash
ping -c -1 'www.google.com'
return_code=$?
echo "$return_code"
echo "This script will exit with a 0 exit status!"
exit 0
