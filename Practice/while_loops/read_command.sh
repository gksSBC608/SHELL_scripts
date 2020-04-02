#!/bin/bash

filter=$1
pid=$(ps -ef | grep ${filter} | awk '{print $2}')
echo "PID extracted is ${pid}"
