#!/bin/bash

backup_dir="backup"
record_file="personal_records.txt"

# Create backup directory if not exists
mkdir -p "$backup_dir"

backup_file="$backup_dir/record_backup_$(date +%Y%m%d_%H%M%S).txt"

cp "$record_file" "$backup_file"

echo "Backup created: $backup_file"
