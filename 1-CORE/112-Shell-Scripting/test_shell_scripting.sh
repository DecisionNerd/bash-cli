#!/bin/bash
# Test script for Lesson 112: Shell Scripting
# Checks for completion marker and scripting exercises in PLAYGROUND/scripts

SCRIPTS_DIR="../../PLAYGROUND/scripts"
RESULT=0

# Check for completion marker
if [ -f "$SCRIPTS_DIR/.script_check" ]; then
  echo "✅ Progress marker found: .script_check"
else
  echo "❌ Progress marker NOT found: .script_check"
  RESULT=1
fi

# Check practice_hello.sh
if [ -x "$SCRIPTS_DIR/practice_hello.sh" ]; then
  OUT=$("$SCRIPTS_DIR/practice_hello.sh")
  if echo "$OUT" | grep -q "Hello from script"; then
    echo "✅ practice_hello.sh prints expected output."
  else
    echo "❌ practice_hello.sh does not print expected output."
    RESULT=1
  fi
else
  echo "❌ practice_hello.sh not found or not executable in $SCRIPTS_DIR"
  RESULT=1
fi

# Check practice_date.sh
if [ -x "$SCRIPTS_DIR/practice_date.sh" ]; then
  OUT=$("$SCRIPTS_DIR/practice_date.sh")
  if echo "$OUT" | grep -qi "date"; then
    echo "✅ practice_date.sh prints a line containing 'date'."
  else
    echo "❌ practice_date.sh does not print a line containing 'date'."
    RESULT=1
  fi
else
  echo "❌ practice_date.sh not found or not executable in $SCRIPTS_DIR"
  RESULT=1
fi

# Check practice_sep.sh
if [ -x "$SCRIPTS_DIR/practice_sep.sh" ]; then
  OUT=$("$SCRIPTS_DIR/practice_sep.sh")
  LINECOUNT=$(echo "$OUT" | wc -l)
  if [ "$LINECOUNT" -ge 2 ]; then
    echo "✅ practice_sep.sh prints at least two lines."
  else
    echo "❌ practice_sep.sh does not print at least two lines."
    RESULT=1
  fi
else
  echo "❌ practice_sep.sh not found or not executable in $SCRIPTS_DIR"
  RESULT=1
fi

if [ $RESULT -eq 0 ]; then
  echo "🎉 All checks passed! You have completed the Shell Scripting lesson."
else
  echo "⚠️  Some checks failed. Please review the instructions and try again."
fi 