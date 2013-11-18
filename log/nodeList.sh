#!/bin/sh
# @Author: mrhaoji
# @Date:   2013-11-12 18:58:43
# @Last Modified by:   mrhaoji
# @Last Modified time: 2013-11-13 15:40:42
echo -n "static.node_monitors = "
for i in $(seq 50)
do
  echo -n "node-$i.sparrow.usrc.kodiak.nx:20502,"
done