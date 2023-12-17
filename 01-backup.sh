#!/bin/bash
##backup using shell script
#files list to be backup.
backup_files="/var/log/messages"

# enter the destination
dest="/home/centos/"

# Create archive filename.
archive_file='$(date "+%Y-%m-%d-%H:%M:%S")'.tgz"

# Print start status message.
echo "Backing up $backup_files to $dest/$archive_file"
# Backup the files using tar.
tar czf $dest/$archive_file $backup_files
echo "Backup has completed"

#lisitng the backup file
ls -l $dest