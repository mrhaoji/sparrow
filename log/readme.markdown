#Benchmarking with Certain Improvements

##Timer
Print time in Backend/Frontend app:   
`System.out.println(System.currentTimeMillis());`

##Logger Switcher
Sparrow uses log4j as Logger:   
`import org.apache.log4j.BasicConfigurator;`   
`import org.apache.log4j.Level;`   
`import org.apache.log4j.Logger;`  

log_level Values: "debug", "info", "warn", "error", "fatal"  

DEFAULT values is set to DEBUG, which generates amount of information during running. It is feasible to turn them off while benchmarking the throughput.

#####Set in sparrow.conf (only for scheduler)
log_level = error

#####Set in codes
`Logger.getRootLogger().setLevel(Level.ERROR);`   
`LOG.setLevel(Level.ERROR);`

##clientPort
DEFAULT LISTEN PORT is set to 50201 in SparrowFrontendCliend.java, all of the SimpleFrontends attempt to start a server on port 50201. It is not able to start more than one at the same time on the same machine with the current code.

###Solution (in Frontend.java)
`int clientPort = 0;`   
`clientPort = Integer.parseInt(args[0]);`

`client.initialize(new InetSocketAddress(schedulerHost, schedulerPort), APPLICATION_ID, this, clientPort);`

run Frontend:   
java -cp target/sparrow-1.0-SNAPSHOT.jar edu.berkeley.sparrow.examples.SimpleFrontend **clientPort** -c frontend.conf

##Steps
- cd /sparrow/log
- bash installLibs.sh (install maven, parallel-ssh, bc)
- bash geneNodes.sh #nodes #clients/jobs (generate Nodes, Clients file and sparrow.conf)
- bash startSparrow.sh (run scheduler)
- bash startBackend.sh #nodes (run Backend app on # nodes)
- bash startFrontend.sh #clients/jobs (run Frontend app on # clients with # jobs)
- bash stopAll.sh (stop schedulers/Backends/Frontends by killing ports)
- bash calThroughput.sh #nodes #clients #jobs (calculate throughput; require bc)
- bash startClean.sh (rm all output logs)

##Throughput
small.tp, medium.tp, large.tp; see details of the workload in `/sparrow/load/`   
sparrow.xlsx: generated charts based on the throughput