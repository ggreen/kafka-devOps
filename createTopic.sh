source ./common.library

if [ "$#" -ne 3 ]; then
    echo "Usage $0 topic partitions replication-factor"
    exit;
fi

$KAFKA_HOME/bin/kafka-topics.sh --bootstrap-server=localhost:$KAFKA_BROKER_PORT --create --topic $1 --partitions $2 --replication-factor=$3
