#!/bin/bash
# Test script for Lesson 109: Working with Archives
# Checks for completion marker and archive exercises in PLAYGROUND/files

FILES_DIR="../../PLAYGROUND/files"
RESULT=0

# Check for completion marker
if [ -f "$FILES_DIR/.archive_check" ]; then
  echo "✅ Progress marker found: .archive_check"
else
  echo "❌ Progress marker NOT found: .archive_check"
  RESULT=1
fi

# Check for testarchive.tar
if [ -f "$FILES_DIR/testarchive.tar" ]; then
  echo "✅ testarchive.tar exists in $FILES_DIR"
else
  echo "❌ testarchive.tar not found in $FILES_DIR"
  RESULT=1
fi

# Check for testarchive.tar.gz
if [ -f "$FILES_DIR/testarchive.tar.gz" ]; then
  echo "✅ testarchive.tar.gz exists in $FILES_DIR"
else
  echo "❌ testarchive.tar.gz not found in $FILES_DIR"
  RESULT=1
fi

# Check for testarchive.7z
if [ -f "$FILES_DIR/testarchive.7z" ]; then
  echo "✅ testarchive.7z exists in $FILES_DIR"
else
  echo "❌ testarchive.7z not found in $FILES_DIR"
  RESULT=1
fi

# Check extracted files from testarchive.tar (if extracted/ exists)
if [ -d "$FILES_DIR/extracted" ]; then
  if [ -f "$FILES_DIR/extracted/file1.txt" ] && [ -f "$FILES_DIR/extracted/file2.txt" ] && [ -f "$FILES_DIR/extracted/testdir/file3.txt" ]; then
    echo "✅ Extracted files found in extracted/ directory."
  else
    echo "❌ Not all expected files found in extracted/ directory."
    RESULT=1
  fi
else
  echo "❌ extracted/ directory not found. Please extract testarchive.tar as per the lesson."
  RESULT=1
fi

if [ $RESULT -eq 0 ]; then
  echo "🎉 All checks passed! You have completed the Working with Archives lesson."
else
  echo "⚠️  Some checks failed. Please review the instructions and try again."
fi 