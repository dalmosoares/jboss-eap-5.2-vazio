CP=./classes

for i in lib/*.jar
do
    CP=$CP:./${i}
done

OPTS="-Xmn200M -Xmx300M -Xms300M -Xss8K -XX:ThreadStackSize=8k -XX:CompileThreshold=100 -XX:SurvivorRatio=8 -XX:TargetSurvivorRatio=90 -XX:MaxTenuringThreshold=31"

# Tell the HttpURLConnection pool to maintain 400 connections max
OPTS="$OPTS -Dhttp.maxConnections=400"

# Set defaults for the load balancer
OPTS="$OPTS -Dmod_cluster.proxy.host=localhost -Dmod_cluster.proxy.port=8000"

java -classpath $CP $OPTS org.jboss.modcluster.demo.client.ModClusterDemo 
