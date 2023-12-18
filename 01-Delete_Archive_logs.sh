#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

# Set the directory path where log files are located
log_directory="/var/log/maillog"

# Set the threshold age for log files
threshold_days=5

# delete old log files
delete_old_logs() {
    find "$log_directory" -type f -name "*.log" -mtime +"$threshold_days" -exec rm {} \;
    echo "Old log files $R deleted."
}

# Function to archive old log files
archive_old_logs() {
    archive_name="log_archive_$(date +'%Y%m%d').tar.gz"
    find "$log_directory" -type f -name "*.log" -mtime +"$threshold_days" -exec tar -czvf "$archive_name" {} +
    echo "Old log files $G archived to $archive_name."
}

