#!/usr/bin/env bash
# 2019-04, Philip Schmutz


## ##################################################
## convert latest

cat data/aapl.json | jq -c ' ."Stock price"[] |
{	
   ticker:	"AAPL"
,  date:        .date
,  open:        .open
,  high:        .high
,  low:         .low
,  close:       .close
,  adj_close:   .adj_close
,  volume:     .volume
}
' > data/aapl.converted.json

cat data/amzn.json | jq -c ' ."Stock price"[] |
{
   ticker:      "AMZN"
,  date:        .date
,  open:        .open
,  high:        .high
,  low:         .low
,  close:       .close
,  adj_close:   .adj_close
,  volume:     .volume
}
' > data/amzn.converted.json

