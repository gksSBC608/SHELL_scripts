#!/bin/bash
read -a var # see help -m read

echo "${#var[@]} inputs in array $var with indexes: ${!var[@]}"
echo "inputs: ${var[@]}"

