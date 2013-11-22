#!/bin/sh
# @Author: mrhaoji
# @Date:   2013-11-21 10:07:56
# @Last Modified by:   mrhaoji
# @Last Modified time: 2013-11-21 10:08:26
parallel-ssh -t 0 -A --hosts=Clients -O StrictHostKeyChecking=no -O UserKnownHostsFile=/dev/null -o ~/sparrow/boot/dout -e ~/sparrow/boot/derr 'bash ~/sparrow/log/init.sh'
# run
it=$1
i=1
for line in $(cat Clients)
do 
echo "$i.$line"
source runFrontend.sh $line $it $i &
let "i=i+1"
done