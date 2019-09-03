source ./common.library

$KAFKA_HOME/bin/kafka-console-consumer.sh --bootstrap-server $KAFKA_HOST:9092 --topic $1
