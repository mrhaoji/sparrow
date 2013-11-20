#!/bin/sh
# @Author: mrhaoji
# @Date:   2013-11-12 18:58:59
# @Last Modified by:   mrhaoji
# @Last Modified time: 2013-11-19 22:06:36
it=$1
rm ~/sparrow/log/Nodes
cp ~/sparrow/log/sparrow.conf ~/sparrow/sparrow.conf
echo -n "static.node_monitors = " >> ~/sparrow/sparrow.conf
for((i=1;i<=it;i++))
do
echo node-${i}.sparrow.usrc.kodiak.nx >> Nodes
echo -n "node-$i.sparrow.usrc.kodiak.nx:20502," >> ~/sparrow/sparrow.conf
done