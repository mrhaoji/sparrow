#!/bin/sh
# @Author: mrhaoji
# @Date:   2013-11-20 14:01:53
# @Last Modified by:   mrhaoji
# @Last Modified time: 2013-11-20 21:28:32
host=$1
#it=$2
#i=$3
ssh $host -o 'StrictHostKeyChecking no' -o 'UserKnownHostsFile /dev/null' "cp /tmp/job.*.*.*.out ~/sparrow/log/"
#ssh $host -o 'StrictHostKeyChecking no' -o 'UserKnownHostsFile /dev/null' "java -cp ~/sparrow/target/sparrow-1.0-SNAPSHOT.jar edu.berkeley.sparrow.examples.SimpleBackend  > ~/sparrow/log/job.back.$host.out"
#ssh $host -o 'StrictHostKeyChecking no' -o 'UserKnownHostsFile /dev/null' "java -cp ~/sparrow/target/sparrow-1.0-SNAPSHOT.jar edu.berkeley.sparrow.examples.SimpleFrontend -c frontend.conf  > ~/sparrow/log/job.front.$host.out"