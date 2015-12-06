#!/bin/bash
declare -a  array
cd /mnt/home2
array=($(ls))
echo "total of user:${#array[@]}"
