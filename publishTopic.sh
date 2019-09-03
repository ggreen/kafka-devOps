#!/bin/bash

source ./common.library

$KAFKA_HOME/bin/kafka-console-producer.sh --broker-list $KAFKA_HOST:9092 --topic $1
