#!/bin/bash
# Test script for 207-Filesystem-and-Storage-Management

set -e

# 1. Test LVM (if available)
if command -v lvcreate > /dev/null; then
  echo "Manual: To test LVM, run: sudo lvcreate -L 10M -n testlv testvg (requires setup)."
else
  echo "LVM tools not installed; skipping LVM test."
fi

# 2. Test RAID (if available)
if command -v mdadm > /dev/null; then
  echo "Manual: To test RAID, run: sudo mdadm --create /dev/md0 --level=1 --raid-devices=2 <dev1> <dev2> (requires setup)."
else
  echo "mdadm not installed; skipping RAID test."
fi

# 3. Test fstab (manual verification required)
echo "Manual: Edit /etc/fstab to add a test mount. Use: echo '/dev/sda1 /mnt ext4 defaults 0 2' | sudo tee -a /etc/fstab"

# 4. Test disk imaging with dd (safe test)
touch testfile
sudo dd if=testfile of=testfile.img bs=1M count=1 status=none
if [[ ! -f testfile.img ]]; then
  echo "dd test failed"; exit 1
fi
rm -f testfile testfile.img

echo "All automated tests passed for 207-Filesystem-and-Storage-Management. Manual steps may remain." 