#!/bin/sh
# @Author: mrhaoji
# @Date:   2013-11-12 19:14:37
# @Last Modified by:   mrhaoji
# @Last Modified time: 2013-11-13 15:39:20
host=$1
#ssh $host -o 'StrictHostKeyChecking no' -o 'UserKnownHostsFile /dev/null' "java -XX:+UseConcMarkSweepGC -cp ~/sparrow/target/sparrow-1.0-SNAPSHOT.jar edu.berkeley.sparrow.daemon.SparrowDaemon -c ~/sparrow/sparrow.conf"
ssh $host -o 'StrictHostKeyChecking no' -o 'UserKnownHostsFile /dev/null' "java -cp ~/sparrow/target/sparrow-1.0-SNAPSHOT.jar edu.berkeley.sparrow.examples.SimpleBackend > ~/sparrow/log/job.back.$host.out"
#ssh $host -o 'StrictHostKeyChecking no' -o 'UserKnownHostsFile /dev/null' "java -cp ~/sparrow/target/sparrow-1.0-SNAPSHOT.jar edu.berkeley.sparrow.examples.SimpleFrontend -c frontend.conf"