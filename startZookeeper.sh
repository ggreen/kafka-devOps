#!/bin/bash

source ./common.library



if [ ! -f $CONFIG_DIR/zookeeper.properties ]; then

  echo  ERROR: Zookeeper configuration file missing. Please create file $CONFIG_DIR/zookeeper.properties
  echo ex: cp $KAFKA_HOME/config/zookeeper.properties $CONFIG_DIR/zookeeper.properties
  exit -1
fi

nohup $KAFKA_HOME/bin/zookeeper-server-start.sh config/zookeeper.properties > /dev/null &2>&1  &
