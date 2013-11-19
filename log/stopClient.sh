#!/bin/sh
# @Author: mrhaoji
# @Date:   2013-11-18 21:16:25
# @Last Modified by:   mrhaoji
# @Last Modified time: 2013-11-18 21:33:05
it=$1
for((i=1;i<=it;i++))
do
kill -9 $(awk -F' ' '{ print $2 }'<<<$(lsof -w -n -i tcp:502$i | sed -n 2p))
done