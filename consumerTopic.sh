source ./common.library

if [ "$#" -ne 1 ]; then
    echo "Usage $0 topic"
    exit;
fi

$KAFKA_HOME/bin/kafka-console-consumer.sh --bootstrap-server $KAFKA_HOST:9092 --topic $1
