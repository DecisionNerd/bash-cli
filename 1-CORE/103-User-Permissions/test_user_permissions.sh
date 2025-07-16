#!/bin/bash
# Test script for Lesson 103: User Permissions
# Checks for completion marker and permission exercises in PLAYGROUND/permissions

PERM_DIR="../../PLAYGROUND/permissions"
RESULT=0

# Check for completion marker
if [ -f "$PERM_DIR/.perm_check" ]; then
  echo "✅ Progress marker found: .perm_check"
else
  echo "❌ Progress marker NOT found: .perm_check"
  RESULT=1
fi

# Check perm_test.txt permissions
if [ -f "$PERM_DIR/perm_test.txt" ]; then
  PERM1=$(stat -c "%a" "$PERM_DIR/perm_test.txt" 2>/dev/null || stat -f "%Lp" "$PERM_DIR/perm_test.txt")
  if [ "$PERM1" = "600" ]; then
    echo "✅ perm_test.txt has correct permissions (600)"
  else
    echo "❌ perm_test.txt permissions are $PERM1 (expected 600)"
    RESULT=1
  fi
else
  echo "❌ perm_test.txt not found in $PERM_DIR"
  RESULT=1
fi

# Check practice_perm.txt permissions
if [ -f "$PERM_DIR/practice_perm.txt" ]; then
  PERM2=$(stat -c "%a" "$PERM_DIR/practice_perm.txt" 2>/dev/null || stat -f "%Lp" "$PERM_DIR/practice_perm.txt")
  if [ "$PERM2" = "644" ]; then
    echo "✅ practice_perm.txt has correct permissions (644)"
  else
    echo "❌ practice_perm.txt permissions are $PERM2 (expected 644)"
    RESULT=1
  fi
else
  echo "❌ practice_perm.txt not found in $PERM_DIR"
  RESULT=1
fi

# Check secret_dir permissions
if [ -d "$PERM_DIR/secret_dir" ]; then
  PERM3=$(stat -c "%a" "$PERM_DIR/secret_dir" 2>/dev/null || stat -f "%Lp" "$PERM_DIR/secret_dir")
  if [ "$PERM3" = "700" ]; then
    echo "✅ secret_dir has correct permissions (700)"
  else
    echo "❌ secret_dir permissions are $PERM3 (expected 700)"
    RESULT=1
  fi
else
  echo "❌ secret_dir not found in $PERM_DIR"
  RESULT=1
fi

if [ $RESULT -eq 0 ]; then
  echo "🎉 All checks passed! You have completed the User Permissions lesson."
else
  echo "⚠️  Some checks failed. Please review the instructions and try again."
fi 