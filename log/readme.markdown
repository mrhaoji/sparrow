#Benchmarking Sparrow with Certain Improvements

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

###Set in sparrow.conf (only for scheduler)
log_level = error

###Set in codes
Logger.getRootLogger().setLevel(Level.ERROR);   
LOG.setLevel(Level.ERROR);

##clientPort
DEFAULT LISTEN PORT is set to 50201 in SparrowFrontendCliend.java, all of the SimpleFrontends attempt to start a server on port 50201. It is not able to start more than one at the same time on the same machine with the current code.

###Solution (in Frontend.java)
`int clientPort = 0;`   
`clientPort = Integer.parseInt(args[0]);`

`client.initialize(new InetSocketAddress(schedulerHost, schedulerPort), APPLICATION_ID, this, clientPort);`

java -cp target/sparrow-1.0-SNAPSHOT.jar edu.berkeley.sparrow.examples.SimpleFrontend **clientPort** -c frontend.conf

##Steps
- cd /sparrow/log
- bash installLibs.sh (install maven, parallel-ssh)
- bash geneNodes.sh # (generate Nodes file with # nodes)
- bash startSparrow.sh (run scheduler)
- bash startBackend.sh (run Backend app)
- bash startFrontend.sh (run Frontend app)
- bash stopServer.sh (stop scheduler/Backend by killing ports)
- bash stopClient.sh (stop Frontend by killing ports)
- bash calThroughput.sh
- bash cleanAll.sh