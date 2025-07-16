#!/bin/bash
# Test script for 202-Regular-Expressions-and-Text-Processing

set -e

# Create a sample file
echo -e "error: something failed\ninfo: all good\n123-45-6789\npattern match line\nfoo bar" > sample.txt

# 1. Test grep for 'error' or 'fail'
GREP_OUT=$(grep -E 'error|fail' sample.txt)
if [[ "$GREP_OUT" != "error: something failed" ]]; then
  echo "grep test failed"; exit 1
fi

# 2. Test sed to print lines with 'pattern'
SED_OUT=$(sed -n '/pattern/p' sample.txt)
if [[ "$SED_OUT" != "pattern match line" ]]; then
  echo "sed test failed"; exit 1
fi

# 3. Test awk to print first field of lines with 'pattern'
AWK_OUT=$(awk '/pattern/ {print $1}' sample.txt)
if [[ "$AWK_OUT" != "pattern" ]]; then
  echo "awk test failed"; exit 1
fi

# 4. Test regex for SSN format
REGEX_OUT=$(grep -E '^[0-9]{3}-[0-9]{2}-[0-9]{4}$' sample.txt)
if [[ "$REGEX_OUT" != "123-45-6789" ]]; then
  echo "regex test failed"; exit 1
fi

rm sample.txt

echo "All tests passed for 202-Regular-Expressions-and-Text-Processing." 