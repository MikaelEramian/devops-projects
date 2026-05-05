#!/bin/bash

LOG_DIR=$1
TIMESTAMP=$(date +%Y%m%d_%H%M%S)
ARCHIVE_DIR="$HOME/log_archives"
ARCHIVE_NAME="logs_archive_$TIMESTAMP.tar.gz"
LOG_FILE="$ARCHIVE_DIR/archive_log.txt"

mkdir -p $ARCHIVE_DIR

tar -czf "$ARCHIVE_DIR/$ARCHIVE_NAME" "$LOG_DIR"

echo "[$TIMESTAMP] Archived $LOG_DIR to $ARCHIVE_NAME" >> $LOG_FILE

echo "Done. Archive saved to $ARCHIVE_DIR/$ARCHIVE_NAME"
