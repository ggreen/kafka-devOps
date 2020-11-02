#!/bin/bash

source ./common.library

$KAFKA_HOME/bin/kafka-consumer-groups.sh  --list --bootstrap-server $KAFKA_HOST:$KAFKA_BROKER_PORT
