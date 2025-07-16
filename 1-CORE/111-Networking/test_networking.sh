#!/bin/bash
# Test script for Lesson 111: Networking
# Checks for completion marker and networking exercises in PLAYGROUND/networking

NET_DIR="../../PLAYGROUND/networking"
RESULT=0

# Check for completion marker
if [ -f "$NET_DIR/.network_check" ]; then
  echo "✅ Progress marker found: .network_check"
else
  echo "❌ Progress marker NOT found: .network_check"
  RESULT=1
fi

# Check ifconfig.txt
if [ -f "$NET_DIR/ifconfig.txt" ]; then
  echo "✅ ifconfig.txt exists in $NET_DIR"
else
  echo "❌ ifconfig.txt not found in $NET_DIR"
  RESULT=1
fi

# Check ip.txt and content
if [ -f "$NET_DIR/ip.txt" ]; then
  echo "✅ ip.txt exists in $NET_DIR"
  if grep -q "inet" "$NET_DIR/ip.txt"; then
    echo "✅ ip.txt contains at least one 'inet' line (IP address)."
  else
    echo "❌ ip.txt does not contain any 'inet' lines (no IP address found)."
    RESULT=1
  fi
else
  echo "❌ ip.txt not found in $NET_DIR"
  RESULT=1
fi

# Check ss.txt
if [ -f "$NET_DIR/ss.txt" ]; then
  echo "✅ ss.txt exists in $NET_DIR"
else
  echo "❌ ss.txt not found in $NET_DIR"
  RESULT=1
fi

# Check netstat.txt
if [ -f "$NET_DIR/netstat.txt" ]; then
  echo "✅ netstat.txt exists in $NET_DIR"
else
  echo "❌ netstat.txt not found in $NET_DIR"
  RESULT=1
fi

if [ $RESULT -eq 0 ]; then
  echo "🎉 All checks passed! You have completed the Networking lesson."
else
  echo "⚠️  Some checks failed. Please review the instructions and try again."
fi 