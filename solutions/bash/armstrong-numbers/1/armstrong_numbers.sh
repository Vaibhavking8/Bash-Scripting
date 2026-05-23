#!/usr/bin/env bash
num="$1"
sum=0
temp=$num
while (( num > 0 ))
do
    r=$(( num % 10 ))
    sum=$(( sum + r ** ${#temp} ))
    num=$(( num / 10 ))
done
if [[ $sum -eq $temp ]] 
then 
    echo "true"
else
    echo "false"
fi