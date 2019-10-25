# kafka-devOps

kafka-devOps BETA UNIX scripts for manage a simple single server Apache Kafka installation.
These scripts have be tested in a local MAC environment.


See the following for [downloading the Apache Kafka](https://kafka.apache.org/quickstart#quickstart_download)

## Startup Scripts
The following are the management scripts to configure/run a Kafka installation

Resource | Notes
--------   | --------------------
setenv.sh  | Set local environment variables (see setenv section below)
common.library  | Internal utility script
startZookeeper.sh | Script for starting Zookeeper
startKafka.sh |  Script for starking a Kakfa broker   



### Configuration
The following is an overview of the variables in the setenv

Variable | Note   | Example
-------- | -------  | ------------
KAFKA_HOME | Apache Kafka installation directory | ex: /apacheKafka/kafka_2.11-2.3.0
KAFKA_HOST | Apache Host Name| localhost
CONFIG_DIR | Location of  kafka server.properties	zookeeper.properties files | ex ./config
KAFKA_BROKER_PORT | The Kafka Port  | ex: 9092
ZOOKEEPER_PORT  | The Zoo Keeper listening PORT | 2181

### Startup

'# | Step | Script  
------ | -----------  |----------
1 | Start Zoopkeeper | ./startZookeeper.sh  
2 | Start Kafka broker| ./startKafka.sh  


## Topic Access Scripts

The following can be used to access topics and its containing data.

Script | Note   
------ | -----------  
consumerTopic.sh | Listen for topic events to print to stdout
countTopic.sh   | Counts the number of events in a topic
createTopic.sh  | create a Kafka topic
deleteTopic.sh  | Deletes a  topic
publishTopic.sh | push a message to a topic
listTopics.sh   | list the available topics
showMessages.sh  | Show messages on a topic
