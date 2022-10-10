#!/bin/sh
if [ -z "$1" ] || [ -z "$2" ]
then 
	echo "Invalid input"
	exit 0
fi
row=$1
col=$2
if [ $row -le 0 ] && [ $col -le 0 ]
then
	echo "Input must be greater than 0"
	exit 0
fi
for i in $(seq 1 $row)
do
	for j in $(seq 1 $col)
	do
		mult=`expr $i \* $j`
		printf "%s*%s=%-2s   " $i $j $mult
	done
printf "\n"
done
exit 0
