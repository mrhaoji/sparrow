#!/bin/sh
# @Author: mrhaoji
# @Date:   2013-11-12 18:59:08
# @Last Modified by:   mrhaoji
# @Last Modified time: 2013-11-19 19:36:40
parallel-ssh -t 0 -A --hosts=Nodes -O StrictHostKeyChecking=no -O UserKnownHostsFile=/dev/null -o ~/sparrow/boot/dout -e ~/sparrow/boot/derr 'bash ~/sparrow/log/init.sh'
# run
it=$1
i=1
for line in $(cat Nodes)
do 
echo "$i.$line"
source runBackend.sh $line $it $i &
let "i=i+1"
done 