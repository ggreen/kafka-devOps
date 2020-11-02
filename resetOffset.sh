source ./common.library

if [ "$#" -ne 2 ]; then
    echo "Usage $0  topic group"
    exit;
fi


echo topic $1 group $2

#--topic $1
$KAFKA_HOME/bin/kafka-consumer-groups.sh --bootstrap-server $KAFKA_HOST:$KAFKA_BROKER_PORT --topic $1  --group $2 --reset-offsets --execute --to-earliest
