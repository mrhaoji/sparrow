#!/bin/sh
# @Author: mrhaoji
# @Date:   2013-11-19 23:42:43
# @Last Modified by:   mrhaoji
# @Last Modified time: 2013-11-21 14:41:37
back=$1
front=$2
cat job.back.$back.*.out | wc -l
cat job.front.$front.*.out | wc -l