#!/bin/sh
# @Author: mrhaoji
# @Date:   2013-11-13 12:01:22
# @Last Modified by:   mrhaoji
# @Last Modified time: 2013-11-21 20:23:09
host=$1
ssh $host -o 'StrictHostKeyChecking no' -o 'UserKnownHostsFile /dev/null' "pkill java"