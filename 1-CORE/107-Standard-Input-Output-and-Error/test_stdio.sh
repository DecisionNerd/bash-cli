#!/bin/bash
# Test script for Lesson 107: Standard Input, Output, and Error
# Checks for completion marker and stdio exercises in PLAYGROUND/environment

ENV_DIR="../../PLAYGROUND/environment"
RESULT=0

# Check for completion marker
if [ -f "$ENV_DIR/.stdio_check" ]; then
  echo "✅ Progress marker found: .stdio_check"
else
  echo "❌ Progress marker NOT found: .stdio_check"
  RESULT=1
fi

# Check stdout_test.txt
if [ -f "$ENV_DIR/stdout_test.txt" ]; then
  echo "✅ stdout_test.txt exists in $ENV_DIR"
else
  echo "❌ stdout_test.txt not found in $ENV_DIR"
  RESULT=1
fi

# Check stderr_test.txt
if [ -f "$ENV_DIR/stderr_test.txt" ]; then
  echo "✅ stderr_test.txt exists in $ENV_DIR"
else
  echo "❌ stderr_test.txt not found in $ENV_DIR"
  RESULT=1
fi

# Check combined_test.txt and content
if [ -f "$ENV_DIR/combined_test.txt" ]; then
  echo "✅ combined_test.txt exists in $ENV_DIR"
  # Check for at least two lines (one output, one error)
  LINECOUNT=$(wc -l < "$ENV_DIR/combined_test.txt")
  if [ "$LINECOUNT" -ge 2 ]; then
    echo "✅ combined_test.txt contains at least two lines (stdout and stderr)."
  else
    echo "❌ combined_test.txt contains fewer than two lines."
    RESULT=1
  fi
else
  echo "❌ combined_test.txt not found in $ENV_DIR"
  RESULT=1
fi

if [ $RESULT -eq 0 ]; then
  echo "🎉 All checks passed! You have completed the Standard Input, Output, and Error lesson."
else
  echo "⚠️  Some checks failed. Please review the instructions and try again."
fi 