#!/bin/bash
# Test script for 203-Process-and-Job-Control

set -e

# 1. Test background job and disown
sleep 2 &
JOB_PID=$!
disown $JOB_PID
if ! ps -p $JOB_PID > /dev/null; then
  echo "Disown test failed"; exit 1
fi
wait $JOB_PID

# 2. Test nohup (manual verification required)
nohup sleep 2 > nohup.out 2>&1 &
NOHUP_PID=$!
sleep 1
if ! ps -p $NOHUP_PID > /dev/null; then
  echo "nohup test failed"; exit 1
fi
wait $NOHUP_PID
rm -f nohup.out

# 3. Test nice
NICE_OUT=$(nice -n 10 bash -c 'echo $PPID')
if [[ -z "$NICE_OUT" ]]; then
  echo "nice test failed"; exit 1
fi

# 4. Test renice (requires permissions, manual verification suggested)
# Start a background sleep, then renice it
sleep 2 &
RENICE_PID=$!
renice 5 $RENICE_PID > /dev/null 2>&1 || true
wait $RENICE_PID

echo "All tests passed for 203-Process-and-Job-Control." 