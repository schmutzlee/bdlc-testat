#!/usr/bin/env bash
# 2019-03, Bruno Grossniklaus, https://github.com/it-gro


## ##################################################
## set config
cd $(dirname $0)
source ./config.sh

## ##################################################
## create directories
test -d ./data || mkdir ./data

## ##################################################
## get data
curl -sSLG "$https://api.unibit.ai/historicaltimestock/AAPL?AccessKey=demo" | jq -c ' .results | . []' > data/aapl.json
curl -sSLG "$https://api.unibit.ai/historicaltimestock/AMZN?AccessKey=demo" | jq -c ' .results | . []' > data/amzn.json
