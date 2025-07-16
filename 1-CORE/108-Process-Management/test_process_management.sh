#!/bin/bash
# Test script for Lesson 108: Process Management
# Checks for completion marker and process management exercises in PLAYGROUND/processes

PROC_DIR="../../PLAYGROUND/processes"
RESULT=0

# Check for completion marker
if [ -f "$PROC_DIR/.process_check" ]; then
  echo "✅ Progress marker found: .process_check"
else
  echo "❌ Progress marker NOT found: .process_check"
  RESULT=1
fi

# Check ps_output.txt and content
if [ -f "$PROC_DIR/ps_output.txt" ]; then
  echo "✅ ps_output.txt exists in $PROC_DIR"
  if grep -q "PID" "$PROC_DIR/ps_output.txt"; then
    echo "✅ ps_output.txt contains 'PID' header."
  else
    echo "❌ ps_output.txt does not contain 'PID' header."
    RESULT=1
  fi
else
  echo "❌ ps_output.txt not found in $PROC_DIR"
  RESULT=1
fi

# Check lsof_output.txt and content
if [ -f "$PROC_DIR/lsof_output.txt" ]; then
  echo "✅ lsof_output.txt exists in $PROC_DIR"
  if grep -q "COMMAND" "$PROC_DIR/lsof_output.txt"; then
    echo "✅ lsof_output.txt contains 'COMMAND' header."
  else
    echo "❌ lsof_output.txt does not contain 'COMMAND' header."
    RESULT=1
  fi
else
  echo "❌ lsof_output.txt not found in $PROC_DIR"
  RESULT=1
fi

if [ $RESULT -eq 0 ]; then
  echo "🎉 All checks passed! You have completed the Process Management lesson."
else
  echo "⚠️  Some checks failed. Please review the instructions and try again."
fi 