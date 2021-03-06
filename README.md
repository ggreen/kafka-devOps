# kafka-devOps

The kafka-devOps project's goal is to provide user-friendly UNIX scripts for management of a simple  [Apache Kafka](https://kafka.apache.org) installation. Also see the following for [downloading Apache Kafka](https://kafka.apache.org/quickstart#quickstart_download)

Additional setup steps to configure a separate local Kafka properties files
- mkdir config
- cp $KAFKA_HOME/config/server.properties config/
- cp $KAFKA_HOME/config/zookeeper.properties config/

*This is currently a BETA version of the scripts that have been tested in a local single server MAC environment.*

Also see [Kakfa tool](http://www.kafkatool.com/download.html) for a GUI for Kakfa topic management.

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

Execute the following to start a local Kafka instance

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
