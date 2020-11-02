source ./common.library

if [ "$#" -ne 1 ]; then
    echo "Usage $0  group"
    exit;
fi


#--topic $1
$KAFKA_HOME/bin/kafka-consumer-groups.sh --bootstrap-server $KAFKA_HOST:$KAFKA_BROKER_PORT  --group $1 --describe
