rem grab the number passed in from the master
set run_number=%1


rem keeping our focus
SqUiRReL!!!!!!!!!!!

rem uncompress the data folder and jump into it
unzip data.zip
cd data

rem run python script with the number passed in
python cruel.py %run_number%



