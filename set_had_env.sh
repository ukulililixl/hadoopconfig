#!/bin/bash

now=`pwd`

#set up hadoop environment
ha_envfile=$now/hadoop/conf/hadoop-env.sh
echo 'export JAVA_HOME=/usr/lib/jvm/java-7-oracle' >> $ha_envfile
echo 'export HADOOP_OPTS=-Djava.net.preferIPv4Stack=true' >> $ha_envfile

#set up hdfs storage
mkdir hadoop/tmp

#configure ssh on eachnode
ssh-keygen -t rsa -P ""
cat $HOME/.ssh/id_rsa.pub >> $HOME/.ssh/authorized_keys

master="10.10.11.40"
this=`ifconfig | grep 'inet addr:' | grep -v '127.0.0.1' | cut -d: -f2 | awk '{print $1}'`

if [ $master == $this ]; then
ssh-copy-id -i $HOME/.ssh/id_rsa.pub hadoop@lxl1
ssh-copy-id -i $HOME/.ssh/id_rsa.pub hadoop@lxl2
ssh-copy-id -i $HOME/.ssh/id_rsa.pub hadoop@lxl3
fi
