#!/bin/bash
# Test script for Lesson 102: File and Folder Management
# Checks for completion marker and basic exercise artifacts in PLAYGROUND/files

PLAYGROUND_DIR="../../PLAYGROUND/files"
MARKER_FILE=".lesson102_complete"

# Check for completion marker
if [ -f "$PLAYGROUND_DIR/$MARKER_FILE" ]; then
  echo "✅ Progress marker found: $MARKER_FILE"
else
  echo "❌ Progress marker NOT found: $MARKER_FILE"
  exit 1
fi

# Check if file creation exercise was done
if [ -f "$PLAYGROUND_DIR/practice102.txt" ]; then
  echo "✅ File 'practice102.txt' exists (creation exercise)"
else
  echo "ℹ️  File 'practice102.txt' not found (may have been deleted as per exercise)"
fi

# Check if directory creation/removal exercise was done
if [ -d "$PLAYGROUND_DIR/testdir102" ]; then
  echo "ℹ️  Directory 'testdir102' still exists (should be removed as per exercise)"
else
  echo "✅ Directory 'testdir102' does not exist (removal exercise)"
fi

# Check file type for known files
if [ -f "$PLAYGROUND_DIR/file/file.txt" ]; then
  file "$PLAYGROUND_DIR/file/file.txt"
else
  echo "ℹ️  file.txt not found for type check."
fi
if [ -f "$PLAYGROUND_DIR/file/archive/archive.tar.gz" ]; then
  file "$PLAYGROUND_DIR/file/archive/archive.tar.gz"
else
  echo "ℹ️  archive.tar.gz not found for type check."
fi

echo "Test script completed. Review output for any ❌ or ℹ️  messages." 