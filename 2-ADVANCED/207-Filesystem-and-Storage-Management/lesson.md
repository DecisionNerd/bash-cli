# 207. Filesystem & Storage Management

Work with LVM, RAID, fstab, and disk imaging for advanced storage solutions.

## LVM Basics

```bash
lvcreate -L 10G -n lvname vgname
```

## RAID Management

```bash
mdadm --create /dev/md0 --level=1 --raid-devices=2 /dev/sda1 /dev/sdb1
```

## fstab

```bash
echo '/dev/sda1 /mnt ext4 defaults 0 2' | sudo tee -a /etc/fstab
```

## Disk Imaging

```bash
dd if=/dev/sda of=/backup/sda.img bs=4M
```
