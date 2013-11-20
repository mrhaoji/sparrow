#!/bin/sh
# @Author: mrhaoji
# @Date:   2013-11-12 18:59:08
# @Last Modified by:   mrhaoji
# @Last Modified time: 2013-11-20 00:15:06
parallel-ssh -t 0 -A --hosts=Nodes -O StrictHostKeyChecking=no -O UserKnownHostsFile=/dev/null -o ~/sparrow/boot/dout -e ~/sparrow/boot/derr 'bash ~/sparrow/log/init.sh'
# run
it=$1
i=1
for line in $(cat Nodes)
do 
echo "$i.$line"
source runFrontend.sh $line $it $i &
let "i=i+1"
done
#startFrontend2.sh
#!/bin/sh
# @Author: mrhaoji
# @Date:   2013-11-12 18:59:08
# @Last Modified by:   mrhaoji
# @Last Modified time: 2013-11-19 16:09:13
#it=$1
#for((i=1;i<=it;i++))
#do
#java -cp ~/sparrow/target/sparrow-1.0-SNAPSHOT.jar edu.berkeley.sparrow.examples.SimpleFrontend 502$i -c ~/sparrow/frontend.conf > ~/sparrow/log/job.$it.$i.out &
#done