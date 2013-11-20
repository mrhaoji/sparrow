#!/bin/sh
# @Author: mrhaoji
# @Date:   2013-11-12 19:31:32
# @Last Modified by:   mrhaoji
# @Last Modified time: 2013-11-18 21:00:27
parallel-ssh -t 0 -A --hosts=Nodes -O StrictHostKeyChecking=no -O UserKnownHostsFile=/dev/null -o ~/sparrow/boot/dout -e ~/sparrow/boot/derr 'bash ~/sparrow/log/killbyPID.sh'