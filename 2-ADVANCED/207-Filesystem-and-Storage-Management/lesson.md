# 207. Filesystem & Storage Management

## Learning Objectives

- Manage logical volumes (LVM)
- Configure RAID arrays
- Edit and use fstab for persistent mounts
- Create disk images for backup and recovery

## Introduction

Advanced filesystem and storage management enables robust, scalable, and recoverable systems. This lesson covers LVM, RAID, fstab, and disk imaging basics.

---

## 1. LVM Basics

Create and manage logical volumes for flexible storage.

**Example:**

```bash
lvcreate -L 10G -n lvname vgname
```

---

## 2. RAID Management

Set up RAID arrays for redundancy and performance.

**Example:**

```bash
mdadm --create /dev/md0 --level=1 --raid-devices=2 /dev/sda1 /dev/sdb1
```

---

## 3. fstab

Configure persistent mounts by editing `/etc/fstab`.

**Example:**

```bash
echo '/dev/sda1 /mnt ext4 defaults 0 2' | sudo tee -a /etc/fstab
```

---

## 4. Disk Imaging

Create disk images for backup and recovery.

**Example:**

```bash
dd if=/dev/sda of=/backup/sda.img bs=4M
```

---

## Practical Exercise

1. (Manual) Create a logical volume using LVM commands (if supported on your system).
2. (Manual) Set up a RAID array using `mdadm` (requires multiple disks or loop devices).
3. Edit `/etc/fstab` to add a new mount (use a test mount point).
4. Create a disk image of a small file or device using `dd`.

---

## Next Steps

- Explore advanced storage management and recovery techniques in future lessons.
