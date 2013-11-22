#!/bin/sh
# @Author: mrhaoji
# @Date:   2013-11-20 14:32:20
# @Last Modified by:   mrhaoji
# @Last Modified time: 2013-11-20 18:43:59
rm ~/sparrow/log/job.*.*.*.out
parallel-ssh -t 0 -A --hosts=Nodes -O StrictHostKeyChecking=no -O UserKnownHostsFile=/dev/null -o ~/sparrow/boot/dout -e ~/sparrow/boot/derr 'bash ~/sparrow/log/init.sh'
#parallel-ssh -t 0 -A --hosts=Nodes -O StrictHostKeyChecking=no -O UserKnownHostsFile=/dev/null -o ~/sparrow/boot/dout -e ~/sparrow/boot/derr 'bash ~/sparrow/log/runSparrow.sh'
i=1
for line in $(cat Nodes)
do 
echo "$i.$line"
source cleanAll.sh $line &
let "i=i+1"
done