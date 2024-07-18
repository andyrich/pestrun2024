#!/bin/sh
su - ec2-user
pwd

unzip -q data.zip
cd pestaws
./pestpp-ies pest_ies.pst /h xxx.xxx.xxx.xxx:9701

