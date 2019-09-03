#!/bin/bash
source ./common.library


if [ ! -f $CONFIG_DIR/server.properties ]; then

  echo ERROR: Zookeeper configuration file missing. Please create file $CONFIG_DIR/server.properties
  echo ex: cp $KAFKA_HOME/config/server.properties $CONFIG_DIR/server.properties
  exit -1
fi

nohup $KAFKA_HOME/bin/kafka-server-start.sh $CONFIG_DIR/server.properties > /dev/null 2>&1 \&
