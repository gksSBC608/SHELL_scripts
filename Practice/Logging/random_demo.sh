#!/bin/bash

function generate_random(){
logger -s -p user.info Logging invoked
r=$RANDOM
logger -p user.info Random number is ${r}
}

function generate_random_upper_limit(){
u_l=$1
echo $u_l
r=$RANDOM
echo $r
result=$(($r % $u_l))
echo $result
}

function generate_random_lower_upper_limit(){
l_l=$(($1+1))
u_l=$2
echo "Lower limit is ${l_l}"
echo "Upper limit is ${u_l}"
diff=$(($u_l - $l_l))
echo "Range size is $diff"
r=$RANDOM
echo "Random is ${r}"
result=$((($r%$diff)+$l_l))
echo $result
}

generate_random
#generate_random_upper_limit 10
#generate_random_lower_upper_limit 40 50
