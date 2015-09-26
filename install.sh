#!/bin/bash

#wget http://archive.apache.org/dist/hadoop/core/hadoop-0.20.203.0/hadoop-0.20.203.0rc1.tar.gz
#tar xzf hadoop-0.20.203.0rc1.tar.gz
#mv hadoop-0.20.203.0 hadoop

now=`pwd`
#echo 'export HADOOP_HOME=/home/hadoop/hadoop' >> $now/.bashrc
#echo 'export PATH=$PATH:$HADOOP_HOME/bin' >> $now/.bashrc
echo 'export PATH=$PATH:/sbin' >> $now/.bashrc
