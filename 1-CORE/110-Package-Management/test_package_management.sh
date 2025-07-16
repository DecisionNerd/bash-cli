#!/bin/bash
# Test script for Lesson 110: Package Management
# Checks for completion marker and package management exercises in PLAYGROUND/files

FILES_DIR="../../PLAYGROUND/files"
RESULT=0

# Check for completion marker
if [ -f "$FILES_DIR/.package_check" ]; then
  echo "✅ Progress marker found: .package_check"
else
  echo "❌ Progress marker NOT found: .package_check"
  RESULT=1
fi

# Check dpkg_list.txt and content
if [ -f "$FILES_DIR/dpkg_list.txt" ]; then
  echo "✅ dpkg_list.txt exists in $FILES_DIR"
  if grep -q "^ii" "$FILES_DIR/dpkg_list.txt"; then
    echo "✅ dpkg_list.txt contains at least one installed package (line starting with 'ii')."
  else
    echo "❌ dpkg_list.txt does not contain any installed packages (no line starting with 'ii')."
    RESULT=1
  fi
else
  echo "❌ dpkg_list.txt not found in $FILES_DIR"
  RESULT=1
fi

# Check apt_search.txt and content
if [ -f "$FILES_DIR/apt_search.txt" ]; then
  echo "✅ apt_search.txt exists in $FILES_DIR"
  if grep -qi "nano" "$FILES_DIR/apt_search.txt"; then
    echo "✅ apt_search.txt contains the searched package name (e.g., 'nano')."
  else
    echo "❌ apt_search.txt does not contain the searched package name (e.g., 'nano')."
    RESULT=1
  fi
else
  echo "❌ apt_search.txt not found in $FILES_DIR"
  RESULT=1
fi

if [ $RESULT -eq 0 ]; then
  echo "🎉 All checks passed! You have completed the Package Management lesson."
else
  echo "⚠️  Some checks failed. Please review the instructions and try again."
fi 