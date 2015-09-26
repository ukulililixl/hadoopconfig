#!/bin/bash

site=/home/hadoop/hadoop/conf

sed -i '6a\
\t<property>\n\t\t<name>hadoop.tmp.dir</name>\n\t\t<value>/home/hadoop/hadoop/tmp</value>\n\t</property>\n\t<property>\n\t\t<name>fs.default.name</name>\n\t\t<value>hdfs://vm1:54310</value>\n\t</property>' $site/core-site.xml

sed -i '6a\
\t<property>\n\t\t<name>mapred.job.tracker</name>\n\t\t<value>vm1:54311</value>\n\t</property>' $site/mapred-site.xml

sed -i '6a\
\t<property>\n\t\t<name>dfs.replication</name>\n\t\t<value>3</value>\n\t</property>' $site/hdfs-site.xml
