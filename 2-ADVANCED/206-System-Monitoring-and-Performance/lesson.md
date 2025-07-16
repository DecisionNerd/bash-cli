# 206. System Monitoring & Performance

## Learning Objectives

- Monitor system resources and performance
- Analyze disk usage and logs
- Use key monitoring tools: top, htop, iotop, ncdu, journalctl

## Introduction

System monitoring and performance analysis are crucial for maintaining healthy systems and troubleshooting issues. This lesson covers essential monitoring tools and their usage.

---

## 1. top/htop

Monitor real-time system processes and resource usage.

**Examples:**

```bash
top
htop
```

---

## 2. iotop

Monitor disk I/O usage by processes.

**Example:**

```bash
iotop
```

---

## 3. ncdu

Analyze disk usage interactively.

**Example:**

```bash
ncdu /
```

---

## 4. journalctl

View and filter system logs (on systems using systemd).

**Example:**

```bash
journalctl -xe
```

---

## Practical Exercise

1. Run `top` or `htop` and identify the process using the most CPU.
2. Use `iotop` to check disk I/O (if available).
3. Use `ncdu` to find the largest directories on your system.
4. Use `journalctl -xe` to view recent system logs.

---

## Next Steps

- Explore more advanced monitoring and performance tools in the next lesson.
