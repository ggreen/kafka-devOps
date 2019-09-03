#!/bin/bash
source ./common.library

$KAFKA_HOME/bin/kafka-topics.sh --zookeeper $KAFKA_HOST:2181 --delete --topic $1
