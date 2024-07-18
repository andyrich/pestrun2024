#!/bin/sh
su - ec2-user
conda activate gis_py_10
pwd

unzip -q data.zip
cd pestaws
pestpp-ies pest_ies.pst /h 172.31.36.83:9701

