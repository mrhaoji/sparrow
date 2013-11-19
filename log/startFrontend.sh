#!/bin/sh
# @Author: mrhaoji
# @Date:   2013-11-12 18:59:08
# @Last Modified by:   mrhaoji
# @Last Modified time: 2013-11-18 21:21:24
it=$1
for((i=1;i<=it;i++))
do
java -cp ~/sparrow/target/sparrow-1.0-SNAPSHOT.jar edu.berkeley.sparrow.examples.SimpleFrontend 502$i -c ~/sparrow/frontend.conf > ~/sparrow/log/job.$it.$i.out &
done