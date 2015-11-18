#!/bin/bash
declare  -a array
declare  -i count
#bashpath="$HOME/bashtest/doinfor.sh"

array=(`ifconfig|grep 'bytes'|cut -d '(' -f 3|cut  -d ' ' -f 1`)	
echo  ${array[0]}
echo  ${array[1]}
echo  ${array[2]}
echo  "The  number of element:${#array[@]}"
count=80
if [ $count -lt 90 ];then
echo  "The value of count is less than 90."
fi
#$bashpath
who -u|sed -n 's/\(.*\)\([0-9]\{4\}\)\(.*\):\([0-9]\{2\}\)\(.*\):\([0-9]\{2\}\)\(.*\)/\4   \6/p'
#数字前有空格
who -u|sed -n 's/\(.*\)\.\(.*\) \([^0-9].*\) (\(.*\))/\3/p'
#数字前没有空格
who -u|sed -n 's/\(.*\)\.\(.*\) \([0-9].*\) (\(.*\))/\3/p'
ifconfig |sed -n  's/\(.*\)TX bytes:\([0-9]\{2,\}\)\([0-9]\{4\}\) (\(.*\))/\2/p'
ifconfig |sed  -n  's/\(.*\):\([0-9]\{2,\}\)\([0-9]\{8\}\) (\(.*\))\(.*\)TX\(.*\)/\2/p'
ifconfig |sed -n  's/\(.*\)TX bytes:\([0-9]\{2,\}\)\([[:digit:]]\{4\}\) (\(.*\))/\2/p'
ifconfig |sed -n  '/drof\?/p'
ifconfig |sed -n  '/byteg*/p'
if [ -f ../ralug.txt ];then
sed     '1!G;h;$!d'  ../ralug.txt
cat  ../ralug.txt|grep bytes|sed  -n  '2s/\(.*\)TX\(.*\)bytes:\([0-9]\{1,\}\)\([0-9]\{8\}\) (\(.*\))\(.*\)/\3/p'
awk  '{total=total+NF};END{print total}'  ../ralug.txt
awk  '{total=total+NF};{print total}'  ../ralug.txt
awk '!/bytes/{n++};END{print n}' ../ralug.txt
#combine two line to  one line
#use print and  printf
awk 'NR%2!=0{printf  $0};NR%2==0{print $0};END{print ""}' ../ralug.txt
fi
