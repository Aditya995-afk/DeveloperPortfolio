
# Author: Aditya Sharma
#!/bin/bash

# Check whether folder argument is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: ./backup.sh <folder>"
    exit 1
fi

SOURCE_DIR="$1"

# Check whether source folder exists
if [ ! -d "$SOURCE_DIR" ]; then
    echo "Error: Folder does not exist."
    exit 1
fi

# Create backup destination
BACKUP_DIR="$HOME/DeveloperPortfolio_Backups"
mkdir -p "$BACKUP_DIR"

# Generate timestamp
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")

# Create backup filename
BACKUP_FILE="$BACKUP_DIR/backup_${TIMESTAMP}.tar.gz"

# Create compressed backup
if tar -czf "$BACKUP_FILE" -C "$(dirname "$SOURCE_DIR")" "$(basename "$SOURCE_DIR")"; then

    SIZE=$(du -h "$BACKUP_FILE" | cut -f1)

    echo "Backup created successfully!"
    echo "Filename: $BACKUP_FILE"
    echo "Size: $SIZE"

    echo "$(date) - SUCCESS - $BACKUP_FILE - Size: $SIZE" >> "$BACKUP_DIR/backup.log"

else
    echo "Backup failed!"
    echo "$(date) - FAILED - $SOURCE_DIR" >> "$BACKUP_DIR/backup.log"
    exit 1
fi
