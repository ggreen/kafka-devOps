source ./common.library

if [ "$#" -ne 1 ]; then
    echo "Usage $0 topic"
    exit;
fi

$KAFKA_HOME/bin/kafka-topics.sh --bootstrap-server=localhost:$KAFKA_BROKER_PORT --describe  --topic $1
