#!/bin/sh
source /home/ubuntu/anaconda3/etc/profile.d/conda.sh
conda activate gis_py_10
pwd

unzip -q data.zip
cd pestaws
pestpp-ies pest_ies.pst /h xxx.xxx.xxx.xxx:9701

