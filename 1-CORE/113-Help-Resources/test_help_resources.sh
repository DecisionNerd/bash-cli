#!/bin/bash
# Test script for Lesson 113: Help Resources
# Checks for completion marker and help resource exercises in PLAYGROUND

PLAYGROUND_DIR="../../PLAYGROUND"
RESULT=0

# Check for completion marker
if [ -f "$PLAYGROUND_DIR/.help_check" ]; then
  echo "✅ Progress marker found: .help_check"
else
  echo "❌ Progress marker NOT found: .help_check"
  RESULT=1
fi

# Check rm_help.txt and content
if [ -f "$PLAYGROUND_DIR/rm_help.txt" ]; then
  echo "✅ rm_help.txt exists in $PLAYGROUND_DIR"
  if grep -qi "remove" "$PLAYGROUND_DIR/rm_help.txt"; then
    echo "✅ rm_help.txt contains the word 'remove'."
  else
    echo "❌ rm_help.txt does not contain the word 'remove'."
    RESULT=1
  fi
else
  echo "❌ rm_help.txt not found in $PLAYGROUND_DIR"
  RESULT=1
fi

# Check echo_help.txt and content
if [ -f "$PLAYGROUND_DIR/echo_help.txt" ]; then
  echo "✅ echo_help.txt exists in $PLAYGROUND_DIR"
  if grep -qi "echo" "$PLAYGROUND_DIR/echo_help.txt"; then
    echo "✅ echo_help.txt contains the word 'echo'."
  else
    echo "❌ echo_help.txt does not contain the word 'echo'."
    RESULT=1
  fi
else
  echo "❌ echo_help.txt not found in $PLAYGROUND_DIR"
  RESULT=1
fi

if [ $RESULT -eq 0 ]; then
  echo "🎉 All checks passed! You have completed the Help Resources lesson."
else
  echo "⚠️  Some checks failed. Please review the instructions and try again."
fi 