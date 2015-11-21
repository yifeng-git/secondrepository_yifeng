#!/bin/bash
while [ "${select}test" = "test" ];do
echo "Enter an  interger:"
read  a
select=$(echo $a|sed -n "/^[1-9][0-9]*$/p")
done
select=""
while [ "${select}test" = "test" ];do
echo "Enter another  interger:"
read b
select=$(echo $b|sed -n "/^[1-9][0-9]*$/p")
done
if [ $a -gt 10 ] && [ $b -lt 150 ];then
echo "Okay."
else
echo "Invalid number,enter a number greater than 10,another less than 150."
fi
