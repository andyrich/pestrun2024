#!/bin/sh
source /home/ec2-user/miniconda3/etc/profile.d
conda activate gis_py_10
pwd

unzip -q data.zip
cd pestaws
pestpp-ies pest_ies.pst /h 172.31.46.246:9701

