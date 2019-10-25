#!/bin/bash
source ./common.library

if [ "$#" -ne 1 ]; then
    echo "Usage $0 topic"
    exit;
fi

$KAFKA_HOME/bin/kafka-topics.sh --zookeeper $KAFKA_HOST:$ZOOKEEPER_PORT --delete --topic $1
