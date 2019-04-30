#!/usr/bin/env bash
# 2019-04, Philip Schmutz


## ##################################################
## push files to hdfs
hdfs dfs -mkdir -p /user/${User}/load
hdfs dfs -put  data/amzn.converted.json      /user/${USER}/load/
hdfs dfs -put  data/aapl.converted.json      /user/${USER}/load/

