#!/bin/bash
source ./common.library

$KAFKA_HOME/bin/kafka-topics.sh --list --zookeeper $KAFKA_HOST:2181
