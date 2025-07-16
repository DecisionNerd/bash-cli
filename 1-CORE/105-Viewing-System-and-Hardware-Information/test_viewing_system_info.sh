#!/bin/bash
# Test script for Lesson 105: Viewing System and Hardware Information
# Checks for completion marker and system info exercises in PLAYGROUND/monitoring

MONITOR_DIR="../../PLAYGROUND/monitoring"
RESULT=0

# Check for completion marker
if [ -f "$MONITOR_DIR/.sysinfo_check" ]; then
  echo "✅ Progress marker found: .sysinfo_check"
else
  echo "❌ Progress marker NOT found: .sysinfo_check"
  RESULT=1
fi

# Check sysinfo.txt
if [ -f "$MONITOR_DIR/sysinfo.txt" ]; then
  echo "✅ sysinfo.txt exists in $MONITOR_DIR"
else
  echo "❌ sysinfo.txt not found in $MONITOR_DIR"
  RESULT=1
fi

# Check cpuinfo.txt and content
if [ -f "$MONITOR_DIR/cpuinfo.txt" ]; then
  echo "✅ cpuinfo.txt exists in $MONITOR_DIR"
  if grep -q "processor" "$MONITOR_DIR/cpuinfo.txt"; then
    echo "✅ cpuinfo.txt contains 'processor' keyword."
  else
    echo "❌ cpuinfo.txt does not contain 'processor' keyword."
    RESULT=1
  fi
else
  echo "❌ cpuinfo.txt not found in $MONITOR_DIR"
  RESULT=1
fi

# Check meminfo.txt and content
if [ -f "$MONITOR_DIR/meminfo.txt" ]; then
  echo "✅ meminfo.txt exists in $MONITOR_DIR"
  if grep -q "MemTotal" "$MONITOR_DIR/meminfo.txt"; then
    echo "✅ meminfo.txt contains 'MemTotal' keyword."
  else
    echo "❌ meminfo.txt does not contain 'MemTotal' keyword."
    RESULT=1
  fi
else
  echo "❌ meminfo.txt not found in $MONITOR_DIR"
  RESULT=1
fi

# Check usbinfo.txt
if [ -f "$MONITOR_DIR/usbinfo.txt" ]; then
  echo "✅ usbinfo.txt exists in $MONITOR_DIR"
else
  echo "❌ usbinfo.txt not found in $MONITOR_DIR"
  RESULT=1
fi

# Check pciinfo.txt
if [ -f "$MONITOR_DIR/pciinfo.txt" ]; then
  echo "✅ pciinfo.txt exists in $MONITOR_DIR"
else
  echo "❌ pciinfo.txt not found in $MONITOR_DIR"
  RESULT=1
fi

if [ $RESULT -eq 0 ]; then
  echo "🎉 All checks passed! You have completed the Viewing System and Hardware Information lesson."
else
  echo "⚠️  Some checks failed. Please review the instructions and try again."
fi 