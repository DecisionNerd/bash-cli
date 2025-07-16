#!/bin/bash
# Test script for Lesson 106: Shell Basics
# Checks for completion marker and shell basics exercises in PLAYGROUND/environment

ENV_DIR="../../PLAYGROUND/environment"
RESULT=0

# Check for completion marker
if [ -f "$ENV_DIR/.shell_check" ]; then
  echo "✅ Progress marker found: .shell_check"
else
  echo "❌ Progress marker NOT found: .shell_check"
  RESULT=1
fi

# Check shell_output.txt
if [ -f "$ENV_DIR/shell_output.txt" ]; then
  echo "✅ shell_output.txt exists in $ENV_DIR"
else
  echo "❌ shell_output.txt not found in $ENV_DIR"
  RESULT=1
fi

# Check history_output.txt and line count
if [ -f "$ENV_DIR/history_output.txt" ]; then
  echo "✅ history_output.txt exists in $ENV_DIR"
  LINECOUNT=$(wc -l < "$ENV_DIR/history_output.txt")
  if [ "$LINECOUNT" -ge 3 ]; then
    echo "✅ history_output.txt contains at least three lines."
  else
    echo "❌ history_output.txt contains fewer than three lines."
    RESULT=1
  fi
else
  echo "❌ history_output.txt not found in $ENV_DIR"
  RESULT=1
fi

# Check txt_files.txt and .txt pattern
if [ -f "$ENV_DIR/txt_files.txt" ]; then
  echo "✅ txt_files.txt exists in $ENV_DIR"
  if grep -qE "\.txt$" "$ENV_DIR/txt_files.txt"; then
    echo "✅ txt_files.txt contains at least one line ending with .txt."
  else
    echo "❌ txt_files.txt does not contain any lines ending with .txt."
    RESULT=1
  fi
else
  echo "❌ txt_files.txt not found in $ENV_DIR"
  RESULT=1
fi

if [ $RESULT -eq 0 ]; then
  echo "🎉 All checks passed! You have completed the Shell Basics lesson."
else
  echo "⚠️  Some checks failed. Please review the instructions and try again."
fi 