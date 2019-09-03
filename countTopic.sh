source ./common.library

if [ "$#" -ne 1 ]; then
    echo "Usage $0 topic"
    exit;
fi

sum=0
for i in `$KAFKA_HOME/bin/kafka-run-class.sh kafka.tools.GetOffsetShell --broker-list $KAFKA_HOST:$KAFKA_BROKER_PORT --time -1 --topic $1 |  awk -F : '{print $3}'`; do sum=$(($sum+$i)); done


echo COUNT=$sum
