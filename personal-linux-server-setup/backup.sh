#!/bin/bash

SRC_DIR="/var/www/html"
BACKUP_DIR="$HOME/backup"

mkdir -p "$BACKUP_DIR"

DATE=$(date +%Y%m%d_%H%M%S)
BACKUP_FILE="$BACKUP_DIR/html_backup_$DATE.tar.gz"

tar -czf "$BACKUP_FILE" "$SRC_DIR"