#!/bin/bash

SOURCE_DIR="/home/yourname/data"
BACKUP_DIR="/home/yourname/backups"

DATE=$(date +%Y-%m-%d)
FILENAME="backup_$DATE.tar.gz"

mkdir -p "$BACKUP_DIR"
tar -czf "$BACKUP_DIR/$FILENAME" "$SOURCE_DIR"

echo "Backup completed: $FILENAME"
