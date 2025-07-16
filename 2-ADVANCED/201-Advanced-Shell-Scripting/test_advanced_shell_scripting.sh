#!/bin/bash
# Test script for 201-Advanced-Shell-Scripting

set -e

# 1. Test function
my_func() {
  echo "Hello $1"
}
FUNC_OUTPUT=$(my_func World)
if [[ "$FUNC_OUTPUT" != "Hello World" ]]; then
  echo "Function test failed"; exit 1
fi

# 2. Test conditionals and loops
> file.txt
testmsg=""
if [ -f file.txt ]; then
  testmsg="File exists"
fi
if [[ "$testmsg" != "File exists" ]]; then
  echo "Conditional test failed"; exit 1
fi
LOOP_OUTPUT=""
for i in {1..3}; do
  LOOP_OUTPUT+="$i "
done
if [[ "$LOOP_OUTPUT" != "1 2 3 " ]]; then
  echo "Loop test failed"; exit 1
fi
rm file.txt

# 3. Test arrays
arr=(one two three)
if [[ "${arr[1]}" != "two" ]]; then
  echo "Array test failed"; exit 1
fi

# 4. Test error handling
false || ERR_MSG="Failed"
if [[ "$ERR_MSG" != "Failed" ]]; then
  echo "Error handling test failed"; exit 1
fi

# 5. Test trap (manual, as automation is complex)
# To test: run `trap 'echo "Interrupted!"; exit' SIGINT` and press Ctrl+C

echo "All tests passed for 201-Advanced-Shell-Scripting." 