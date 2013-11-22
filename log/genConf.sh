#!/bin/sh
# @Author: mrhaoji
# @Date:   2013-11-20 15:52:34
# @Last Modified by:   mrhaoji
# @Last Modified time: 2013-11-21 13:21:08
rs=$1
it=$2
job=$3
rm ~/sparrow/frontend-*
for((i=1;i<=job;i++))
do
cp ~/sparrow/log/frontend.conf ~/sparrow/frontend-$i.conf
echo "tasks_per_job = $(sed -n "${i}p" ~/sparrow/load/job.$rs.$it.ld)" >> ~/sparrow/frontend-$i.conf
done