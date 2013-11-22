#!/bin/sh
# @Author: mrhaoji
# @Date:   2013-11-13 15:35:52
# @Last Modified by:   mrhaoji
# @Last Modified time: 2013-11-20 18:33:52
host=$1
ssh $host -o 'StrictHostKeyChecking no' -o 'UserKnownHostsFile /dev/null' "rm /tmp/job.*.*.*.out"