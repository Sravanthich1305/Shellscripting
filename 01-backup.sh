#!/bin/bash
##backup using shell script

#files list to be backup.
backup_files="/var/log/messages"

# enter the destination
dest="/home/centos/"
time=$(date +%m-%d-%y)
# Create archive filename.
archive_file=backup_messages_$time.tz

# Print start status message.
echo "Backing up $backup_files to $dest/$archive_file"
# Backup the files using tar.
tar cvzf $dest/$archive_file $backup_files
echo "Backup has completed"

#lisitng the backup file
ls -l $dest