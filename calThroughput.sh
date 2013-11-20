#!/bin/sh
# @Author: mrhaoji
# @Date:   2013-11-19 16:27:13
# @Last Modified by:   mrhaoji
# @Last Modified time: 2013-11-19 16:32:16
it=$1
max=-9223372036854775807 #/usr/include/limits.h
max(){
cat job.$it.* |sed '/^$/d' | while read line; do
if [ $line -gt $max ]
then
max=$line
else
continue
fi
echo $max > max_number
done
echo "Miximum number in this file: " `cat max_number`
rm -rf max_number
}

min=9223372036854775807
min(){
cat job.$it.* |sed '/^$/d' | while read line; do
if [ $line -lt $min ]
then
min=$line
else
continue
fi
echo $min > min_number
done
echo "Minimum number in this file: " `cat min-number`
rm -rf min_number
}

#$it/(max-min)
max
min