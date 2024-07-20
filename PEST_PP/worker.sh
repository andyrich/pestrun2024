#!/bin/sh


mkdir -p gis_py_10
tar -xzf gis_py_10.tar.gz -C gis_py_10
#./gis_py_10/bin/python
source gis_py_10/bin/activate
export PATH="/gis_py_10/bin:$PATH"
unzip -q data.zip



# Get the current date and time
current_date_time=$(date)

# Get the current user
current_user=$(whoami)

# Get the hostname
hostname=$(hostname)

# Get the system's uptime
uptime_info=$(uptime -p)

# Get the system's IP address
ip_address=$(hostname -I | awk '{print $1}')

# Get the current location (based on IP)
location_info=$(curl -s ipinfo.io)

# Get the disk usage
disk_usage=$(df -h / | awk 'NR==2 {print $5}')

# Get the PATH variable
path_variable=$PATH

# Display the information
echo "Current Date and Time: $current_date_time"
echo "Current User: $current_user"
echo "Hostname: $hostname"
echo "System Uptime: $uptime_info"
echo "IP Address: $ip_address"
echo "Location Information: $location_info"
echo "Disk Usage: $disk_usage"
echo "PATH Variable: $path_variable"

#test_python.sh

cd pestaws
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
