#!/bin/bash

export JAVA_HOME=/usr/lib/jvm/java-6-openjdk-amd64
export HADOOP_CLASSPATH=json-simple-1.1.1.jar

javac -classpath hadoop-1.2.1/hadoop-core-1.2.1.jar:hadoop-1.2.1/lib/commons-cli-1.2.jar:./json-simple-1.1.1.jar -d popular/classes/ popular/src/WordCount.java

jar -cvf popular/WordCount.jar -C popular/classes/ .

# To run the newly compiled map reduce run
# hadoop-1.2.1/bin/hadoop jar playground/wordcount.jar org.apache.hadoop.examples.WordCount <input> <output>
