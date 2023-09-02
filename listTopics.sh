#!/bin/bash
source ./common.library

$KAFKA_HOME/bin/kafka-topics.sh --list --bootstrap-server=localhost:$KAFKA_BROKER_PORT
# --zookeeper $KAFKA_HOST:$ZOOKEEPER_PORT
