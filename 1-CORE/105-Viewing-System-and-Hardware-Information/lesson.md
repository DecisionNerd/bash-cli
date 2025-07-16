# 105. Viewing System and Hardware Information

## 📝 Summary

Knowing how to view system and hardware information is essential for troubleshooting, upgrades, and understanding your environment. In this lesson, you'll learn how to use built-in files and commands to gather details about your CPU, memory, and connected devices.

## 🎯 Learning Objectives

- Use `/proc` files to view CPU and memory information
- Use `dmidecode` to display hardware details
- Use `lsusb` and `lspci` to list connected devices
- Practice gathering system info in the `PLAYGROUND/monitoring/` directory

## 📚 Lesson Content

### Why View System Information?

System information helps you check hardware specs, diagnose issues, and plan upgrades.

---

### Special Files in `/proc`

- `/proc/cpuinfo` — CPU info
- `/proc/meminfo` — Memory info

**Examples:**

```bash
cat /proc/cpuinfo      # View CPU details
cat /proc/meminfo      # View memory details
```

---

### `dmidecode` — Hardware Info

The `dmidecode` command displays detailed hardware information (may require `sudo`).

```bash
dmidecode
```

---

### `lsusb` — List USB Devices

Lists all USB devices connected to your system.

```bash
lsusb
```

---

### `lspci` — List PCI Devices

Lists all PCI devices (graphics cards, network cards, etc.).

```bash
lspci
```

---

## 💡 Guided Examples

1. In the `PLAYGROUND/monitoring/` directory, create a file called `sysinfo.txt`.
2. Use the following commands to append information to `sysinfo.txt`:
   ```bash
   cat /proc/cpuinfo >> PLAYGROUND/monitoring/sysinfo.txt
   cat /proc/meminfo >> PLAYGROUND/monitoring/sysinfo.txt
   lsusb >> PLAYGROUND/monitoring/sysinfo.txt
   lspci >> PLAYGROUND/monitoring/sysinfo.txt
   ```
   (If you have permission, also run `sudo dmidecode >> PLAYGROUND/monitoring/sysinfo.txt`)

---

## 🧪 Practice Exercises

1. **CPU Info:**
   - Use `cat /proc/cpuinfo` and write the output to `cpuinfo.txt` in `PLAYGROUND/monitoring/`.
2. **Memory Info:**
   - Use `cat /proc/meminfo` and write the output to `meminfo.txt` in `PLAYGROUND/monitoring/`.
3. **Device Lists:**
   - Use `lsusb` and `lspci` to write their outputs to `usbinfo.txt` and `pciinfo.txt` in `PLAYGROUND/monitoring/`.

---

## ✅ Progress Check (Optional)

After completing the exercises, create a marker file named `.sysinfo_check` in `PLAYGROUND/monitoring/`:

```bash
touch PLAYGROUND/monitoring/.sysinfo_check
```

This helps automated scripts verify your progress in this lesson.

_Next up: Learn about shell basics in Lesson 106!_
