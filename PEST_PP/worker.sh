#!/bin/sh


mkdir -p gis_py_10
tar -xzf gis_py_10.tar.gz -C gis_py_10
./gis_py_10/bin/python
source gis_py_10/bin/activate
export PATH="/gis_py_10/bin:$PATH"
unzip -q data.zip

echo whoami
echo pwd

cd pestaws
echo pwd
pestpp-ies pest_ies.pst /h 172.31.46.122:9701


#sudo -u  ec2-user  'conda activate gis_py_10
#unzip -q data.zip
#cd pestaws
#pestpp-ies pest_ies.pst /h 172.31.36.83:9701
#'
#conda activate gis_py_10
#pwd
#
#unzip -q data.zip
#cd pestaws
#pestpp-ies pest_ies.pst /h 172.31.36.83:9701
