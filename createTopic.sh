source ./common.library

$KAFKA_HOME/bin/kafka-topics.sh --zookeeper $KAFKA_HOST:2181 --create --topic $1 --partitions $2 --replication-factor=1
