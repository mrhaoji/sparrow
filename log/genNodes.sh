#!/bin/sh
# @Author: mrhaoji
# @Date:   2013-11-12 18:58:59
# @Last Modified by:   mrhaoji
# @Last Modified time: 2013-11-21 21:30:48
nodes=$1
clients=$2
rm ~/sparrow/log/Nodes ~/sparrow/log/Clients
cp ~/sparrow/log/sparrow.conf ~/sparrow/sparrow.conf
echo -n "static.node_monitors = " >> ~/sparrow/sparrow.conf
for((i=1;i<=nodes;i++))
do
echo node-${i}.sparrow.usrc.kodiak.nx >> ~/sparrow/log/Nodes
echo -n "node-$i.sparrow.usrc.kodiak.nx:20502," >> ~/sparrow/sparrow.conf
done
for((i=1;i<=clients;i++))
do
echo node-${i}.sparrow.usrc.kodiak.nx >> ~/sparrow/log/Clients
done