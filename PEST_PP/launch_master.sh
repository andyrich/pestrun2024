#!/bin/sh

# compress up the data
tar -czf data.tar data

# maybe update worker.sh??

# launch the MASTER
cd MASTER
./pestpp-ies freyberg6_run_ies.pst /h :9701
