#!/bin/bash
# Test script for Lesson 104: Searching and Finding Files
# Checks for completion marker and search exercises in PLAYGROUND/search

SEARCH_DIR="../../PLAYGROUND/search"
RESULT=0

# Check for completion marker
if [ -f "$SEARCH_DIR/.search_check" ]; then
  echo "✅ Progress marker found: .search_check"
else
  echo "❌ Progress marker NOT found: .search_check"
  RESULT=1
fi

# Check findme.txt
if [ -f "$SEARCH_DIR/findme.txt" ]; then
  echo "✅ findme.txt exists in $SEARCH_DIR"
else
  echo "❌ findme.txt not found in $SEARCH_DIR"
  RESULT=1
fi

# Check grepme/grepme.txt
if [ -f "$SEARCH_DIR/grepme/grepme.txt" ]; then
  echo "✅ grepme/grepme.txt exists in $SEARCH_DIR/grepme"
else
  echo "❌ grepme/grepme.txt not found in $SEARCH_DIR/grepme"
  RESULT=1
fi

# Check practice104.txt
if [ -f "$SEARCH_DIR/practice104.txt" ]; then
  echo "✅ practice104.txt exists in $SEARCH_DIR"
  # Check for required line
  if grep -q "Linux search is powerful" "$SEARCH_DIR/practice104.txt"; then
    echo "✅ practice104.txt contains the required line."
  else
    echo "❌ practice104.txt does not contain the required line: 'Linux search is powerful'"
    RESULT=1
  fi
else
  echo "❌ practice104.txt not found in $SEARCH_DIR"
  RESULT=1
fi

if [ $RESULT -eq 0 ]; then
  echo "🎉 All checks passed! You have completed the Searching and Finding Files lesson."
else
  echo "⚠️  Some checks failed. Please review the instructions and try again."
fi 