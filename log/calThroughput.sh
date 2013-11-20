#!/bin/sh
# @Author: mrhaoji
# @Date:   2013-11-19 20:42:44
# @Last Modified by:   mrhaoji
# @Last Modified time: 2013-11-19 21:41:06
it=$1
cat job.back.$it.* > result.$it.back
cat job.front.$it.* > result.$it.front
sort -r result.$it.back -o result.$it.back
sort result.$it.front -o result.$it.front
end=$(head -1 result.$it.back)
start=$(head -1 result.$it.front)
echo "=================================="
echo "$it jobs START at" $start
echo "$it jobs END   at" $end
let "duration=$end-$start"
duration_s=$(echo "scale=3; $duration / 1000 " | bc )
echo "$it jobs RUN   for" $duration_s "s"
echo "=================================="
throughput=$(echo "scale=3; $it / $duration_s" | bc )
echo "Throughput:" $throughput
echo "=================================="