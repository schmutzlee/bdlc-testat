#!/usr/bin/env bash
# 2019-03, Bruno Grossniklaus, https://github.com/it-gro

## ##################################################
## set config
cd $(dirname $0)
source ./config.sh

## ##################################################
## push files to hdfs
hdfs dfs -put  data/amzn.converted.json      /user/${USER}/load/
hdfs dfs -put  data/aapl.converted.json      /user/${USER}/load/

