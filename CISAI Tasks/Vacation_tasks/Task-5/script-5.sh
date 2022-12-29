#!/bin/bash

# Set the maximum memory that the folder can use
MAX_MEMORY=1000

# Set the soft and hard memory limits as percentages of the maximum memory
SOFT_LIMIT=75
HARD_LIMIT=90

# Set the folder to be monitored
FOLDER_PATH="/home/gautamrajesh007/Documents/CISAI Tasks/Vacation_tasks/Task-5/Monitored Folder"

# Set the command to be used for compressing files
COMPRESS_CMD="gzip"

# Set the extension for compressed files
COMPRESSED_EXT=".gz"

# Check the current memory usage of the folder
MEMORY_USED=$(du -s "$FOLDER_PATH" | cut -f1)

# Calculate the soft and hard memory limits in bytes
SOFT_LIMIT_BYTES=$((MAX_MEMORY * SOFT_LIMIT / 100))
HARD_LIMIT_BYTES=$((MAX_MEMORY * HARD_LIMIT / 100))

# If the memory usage is above the soft limit, compress the 3 oldest files
if [ "$MEMORY_USED" -gt "$SOFT_LIMIT_BYTES" ]; then
  # Find the 3 oldest files in the folder and compress them
  find "$FOLDER_PATH" -type f -printf '%T@ %p\n' | sort -n | head -3 | cut -d' ' -f2- | xargs -I {} "$COMPRESS_CMD" "{}"
fi

# If the memory usage is above the hard limit, delete the 3 oldest files
if [ "$MEMORY_USED" -gt "$HARD_LIMIT_BYTES" ]; then
  # Find the 3 oldest files in the folder and delete them
  find "$FOLDER_PATH" -type f -printf '%T@ %p\n' | sort -n | head -3 | cut -d' ' -f2- | xargs -I {} rm "{}"
fi
