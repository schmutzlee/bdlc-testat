#!/usr/bin/env bash
# 2019-03, Bruno Grossniklaus, https://github.com/it-gro

## ##################################################
## set config
cd $(dirname $0)
source ./config.sh


## ##################################################
## convert latest

cat data/aapl.json | jq -c '
{
  location:        .location
, city:            .city
, country:         .country
, distance:        .distance
, coordinates:     .coordinates
}
' > data/aapl.converted.json

cat data/amzn.json | jq -c '
{
  location:        .location
, measurements:    .measurements[]
}
' > data/amzn.converted.json

