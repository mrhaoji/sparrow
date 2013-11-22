#!/bin/sh
# @Author: mrhaoji
# @Date:   2013-11-12 18:59:08
# @Last Modified by:   mrhaoji
# @Last Modified time: 2013-11-21 00:21:32
parallel-ssh -t 0 -A --hosts=Nodes -O StrictHostKeyChecking=no -O UserKnownHostsFile=/dev/null -o ~/sparrow/boot/dout -e ~/sparrow/boot/derr 'bash ~/sparrow/log/init.sh'
#parallel-ssh -t 0 -A --hosts=Nodes -O StrictHostKeyChecking=no -O UserKnownHostsFile=/dev/null -o ~/sparrow/boot/dout -e ~/sparrow/boot/derr 'bash ~/sparrow/log/runSparrow.sh'
#it=$1
i=1
for line in $(cat Nodes)
do 
echo "$i.$line"
source runMove.sh $line &
let "i=i+1"
done