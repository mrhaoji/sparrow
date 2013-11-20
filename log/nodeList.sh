#!/bin/sh
# @Author: mrhaoji
# @Date:   2013-11-12 18:58:43
# @Last Modified by:   mrhaoji
# @Last Modified time: 2013-11-19 02:00:55
it=$1
#echo -n "static.node_monitors = "
for((i=1;i<=it;i++))
do
  echo -n "node-$i.sparrow.usrc.kodiak.nx:20502," >> sparrow.conf
done