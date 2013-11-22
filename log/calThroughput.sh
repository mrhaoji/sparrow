#!/bin/sh
# @Author: mrhaoji
# @Date:   2013-11-19 20:42:44
# @Last Modified by:   mrhaoji
# @Last Modified time: 2013-11-21 00:04:17
back=$1
front=$2
job=$3
cat job.back.$back.* > result.$back.back
cat job.front.$front.* > result.$front.front
sort -r result.$back.back -o result.$back.back
sort result.$front.front -o result.$front.front
end=$(head -1 result.$back.back)
start=$(head -1 result.$front.front)
echo "=================================="
echo "$front jobs START at" $start
echo "$front jobs END   at" $end
let "duration=$end-$start"
duration_s=$(echo "scale=3; $duration / 1000 " | bc )
echo "$front jobs RUN  for" $duration_s"s"
echo "=================================="
throughput=$(echo "scale=3; $job / $duration_s" | bc )
echo "Throughput:" $throughput
echo "=================================="