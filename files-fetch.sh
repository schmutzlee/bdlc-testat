#!/bin/bash
# 2019-04, Schmutz Philip

## ##################################################
## create directories
test -d ./data || mkdir ./data

## ##################################################
## get data
curl -sSLG "https://api.unibit.ai/historicalstockprice/AAPL?range=1y&interval=10&datatype=json&AccessKey=k-Fsn_DVInAzOQ4lk1AjcofhuXIr5xA0" | jq  -c '.'  >data/aapl.json 
curl -sSLG "https://api.unibit.ai/historicalstockprice/AMZN?range=1y&interval=10&datatype=json&AccessKey=k-Fsn_DVInAzOQ4lk1AjcofhuXIr5xA0" | jq  -c '.'  >data/amzn.json 
