#!/bin/bash
source ./common.library

if [ ! -f $CONFIG_DIR/kraft/server.properties ]; then

  echo ERROR: Zookeeper configuration file missing. Please create file $CONFIG_DIR/kraft/server.properties 
  echo ex: "mkdir -p $CONFIG_DIR/kraft && cp $KAFKA_HOME/config/kraft/server.properties $CONFIG_DIR/kraft/server.properties"
  exit -1
fi

KAFKA_CLUSTER_ID="$($KAFKA_HOME/bin/kafka-storage.sh random-uuid)"

$KAFKA_HOME/bin/kafka-storage.sh format -t $KAFKA_CLUSTER_ID -c $CONFIG_DIR/kraft/server.properties

nohup $KAFKA_HOME/bin/kafka-server-start.sh $CONFIG_DIR/kraft/server.properties  > /dev/null 2>&1 &
#nohup $KAFKA_HOME/bin/kafka-server-start.sh $CONFIG_DIR/server.properties > /dev/null 2>&1 &
