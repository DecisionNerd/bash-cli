#!/bin/bash

# Test script for 101-Basic-Navigation lesson

PLAYGROUND_DIR="PLAYGROUND"
TESTNAV_DIR="$PLAYGROUND_DIR/testnav"
RESULT=0

echo "Checking if you have completed the Basic Navigation lesson..."

# 1. Check if PLAYGROUND directory exists
if [ -d "$PLAYGROUND_DIR" ]; then
    echo "✅ PLAYGROUND directory exists."
else
    echo "❌ PLAYGROUND directory not found."
    RESULT=1
fi

# 2. Check if user created 'testnav' directory
if [ -d "$TESTNAV_DIR" ]; then
    echo "✅ 'testnav' directory created in PLAYGROUND."
else
    echo "❌ 'testnav' directory not found in PLAYGROUND."
    RESULT=1
fi

# 3. Check for .ls_check file
if [ -f "$PLAYGROUND_DIR/.ls_check" ]; then
    echo "✅ Found '.ls_check' file in PLAYGROUND (ls command confirmed)."
else
    echo "❌ '.ls_check' file not found in PLAYGROUND. Please create it after running 'ls -alh'."
    RESULT=1
fi

# 4. Check for .pwd_check file
if [ -f "$PLAYGROUND_DIR/.pwd_check" ]; then
    echo "✅ Found '.pwd_check' file in PLAYGROUND (pwd command confirmed)."
else
    echo "❌ '.pwd_check' file not found in PLAYGROUND. Please create it after running 'pwd'."
    RESULT=1
fi

if [ $RESULT -eq 0 ]; then
    echo "🎉 All checks passed! You have completed the Basic Navigation lesson."
else
    echo "⚠️  Some checks failed. Please review the instructions and try again."
fi 