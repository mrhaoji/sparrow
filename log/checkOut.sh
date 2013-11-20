#!/bin/sh
# @Author: mrhaoji
# @Date:   2013-11-19 23:42:43
# @Last Modified by:   mrhaoji
# @Last Modified time: 2013-11-20 00:11:07
it=$1
cat job.front.$it.* | wc -l
cat job.back.$it.* | wc -l