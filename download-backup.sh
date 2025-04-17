#!/bin/bash

# === CONFIG ===
SOURCE_DIR="$HOME/Downloads"
BACKUP_DIR="$HOME/Backups/Downloads"
TIMESTAMP=$(date) 
BACKUP_NAME="downloads-backup-$TIMESTAMP.tar.bz2"
LOG_FILE="$BACKUP_DIR/backup.log"

# === CREATE BACKUP FOLDER IF NOT EXISTS ===
mkdir -p "$BACKUP_DIR"

# === RUN BACKUP ===
echo "[$(date)] Starting backup of $SOURCE_DIR" >> "$LOG_FILE"
tar -cjvf "$BACKUP_DIR/$BACKUP_NAME" -C "$SOURCE_DIR" .
echo "[$(date)] Backup completed: $BACKUP_NAME" >> "$LOG_FILE"


