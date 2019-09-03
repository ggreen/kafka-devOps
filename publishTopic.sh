#!/bin/bash
source ./common.library

if [ "$#" -ne 1 ]; then
    echo "Usage $0 topic"
    exit;
fi

$KAFKA_HOME/bin/kafka-console-producer.sh --broker-list $KAFKA_HOST:9092 --topic $1
