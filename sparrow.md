#Sparrow

##Build
cd sparrow/
mvn compile
mvn package -Dmaven.test.skip=true

##Run
java -XX:+UseConcMarkSweepGC -cp target/sparrow-1.0-SNAPSHOT.jar edu.berkeley.sparrow.daemon.SparrowDaemon -c sparrow.conf

java -cp target/sparrow-1.0-SNAPSHOT.jar edu.berkeley.sparrow.examples.SimpleBackend

java -cp target/sparrow-1.0-SNAPSHOT.jar edu.berkeley.sparrow.examples.SimpleFrontend -c frontend.conf

-Dlog4j.configuration=file:"~/sparrow/target/log4j.properties"

F Stt: 1384805989186
B End: 1384805989714
F End: 1384805990483


F: 1384806307698
B: 1384806308061   363
F: 1384806309011   1313

##Config
###sparrow.config
//separate each node by comma
static.node_monitors = hostname:20502
//name of the application using Sparrow
static.app.name = yourApp

###frontend.config
//duration, time to lauch jobs
experiment_s = 1
//job arrival period
job_arrival_period_millis = 2000
//number of tasks per job
tasks_per_job = 1
//duration of one task
task_duration_millis = 0

##Workloads
Small
50  50  1
100 100
150 150 
200 200
250 250
300 300
350 350

sparrow conf monitor node = list 50 except scheduler
tasks per job = 1

Medium
50   50 random
100 100 
150 150
200 200
250 250
300 300
350 350

sparrow conf monitor node = list 50 except scheduler
tasks per job = random

Large
100  40 random
150  60
200  80
250 100
300 120
350 140

sparrow conf monitor node = list 100 except scheduler
tasks per job = random

##Throughput


##Others
sudo apt-get install maven
sudo dpkg -i /users/xiaobing/Downloads/pssh_2.2.2-0ubuntu1_all.deb

lsof -wni tcp:20502

scp /Users/haoji/Developer/sparrow/sparrow.conf mrhaoji@kodiak.nmc-probe.org:/users/mrhaoji/sparrow/log

scp /Users/haoji/Developer/sparrow/log/* mrhaoji@kodiak.nmc-probe.org:/users/mrhaoji/sparrow/log

scp /Users/haoji/Developer/sparrow/src/main/java/edu/berkeley/sparrow/examples/* mrhaoji@kodiak.nmc-probe.org:/users/mrhaoji/sparrow/src/main/java/edu/berkeley/sparrow/examples

scp /Users/haoji/Developer/sparrow/src/main/java/edu/berkeley/sparrow/api/* mrhaoji@kodiak.nmc-probe.org:/users/mrhaoji/sparrow/src/main/java/edu/berkeley/sparrow/api