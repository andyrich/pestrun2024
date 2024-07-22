#!/bin/sh

pwd

tar xzf data.tar
cd data
./pestpp-ies freyberg6_run_ies.pst /h 172.31.32.153:9701

