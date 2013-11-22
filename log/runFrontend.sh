#!/bin/sh
# @Author: mrhaoji
# @Date:   2013-11-13 15:37:41
# @Last Modified by:   mrhaoji
# @Last Modified time: 2013-11-20 21:53:10
host=$1
it=$2
i=$3
#ssh $host -o 'StrictHostKeyChecking no' -o 'UserKnownHostsFile /dev/null' "java -XX:+UseConcMarkSweepGC -cp ~/sparrow/target/sparrow-1.0-SNAPSHOT.jar edu.berkeley.sparrow.daemon.SparrowDaemon -c ~/sparrow/sparrow.conf"
#ssh $host -o 'StrictHostKeyChecking no' -o 'UserKnownHostsFile /dev/null' "java -cp ~/sparrow/target/sparrow-1.0-SNAPSHOT.jar edu.berkeley.sparrow.examples.SimpleBackend"
ssh $host -o 'StrictHostKeyChecking no' -o 'UserKnownHostsFile /dev/null' "java -cp ~/sparrow/target/sparrow-1.0-SNAPSHOT.jar edu.berkeley.sparrow.examples.SimpleFrontend -c ~/sparrow/frontend-$i.conf  > /tmp/job.front.$it.$i.out"