#!/usr/bin/env bash
# 2019-04, Philip Schmutz

## ##################################################
## set config
cd $(dirname $0)
source ./config.sh

## ##################################################
## run scripts
./files-fetch.sh
./files-convert.sh
./files-push2hdfs.sh
