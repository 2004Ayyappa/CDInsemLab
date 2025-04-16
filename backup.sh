#!/bin/bash
SOURCE_DIR="c/Users/user/backup"
BACKUP_DIR="d/CD/InsemLab"

DATE=$(date +"%Y-%m-%d_%H-%M-%S")


DEST_DIR="$BACKUP_DIR/backup_$DATE"


mkdir -p "$DEST_DIR"


cp -r "$SOURCE_DIR"/* "$DEST_DIR"


if [ $? -eq 0 ]; then
  echo "Backup successful: $DEST_DIR"
else
  echo "Backup failed."
fi




