# 111. Networking

## 📝 Summary

Networking commands allow you to view, configure, and troubleshoot network interfaces and connections. In this lesson, you'll learn to use essential tools for managing network settings and monitoring network activity.

## 🎯 Learning Objectives

- View and manage network interfaces
- Display routing and device information
- Monitor network connections and statistics
- Practice networking commands in the `PLAYGROUND/networking/` directory

## 📚 Lesson Content

### Why Learn Networking Commands?

Understanding networking is crucial for troubleshooting connectivity, configuring interfaces, and securing your system.

---

### `ifconfig` — Network Interfaces

Displays and configures network interfaces (older tool, still common).

```bash
ifconfig [INTERFACE]
```

---

### `iwconfig` — Wireless Interfaces

Displays and configures wireless interfaces.

```bash
iwconfig [INTERFACE]
```

---

### `ip` — Routing/Devices

Modern tool for managing network interfaces, addresses, and routes.

```bash
ip [COMMAND]
```

**Example:**

```bash
ip address
```

---

### `iw` — Wireless Devices

Advanced tool for wireless device management.

```bash
iw [COMMAND]
```

**Example:**

```bash
iw dev
```

---

### `nmcli` — NetworkManager CLI

Manages network connections using NetworkManager.

```bash
nmcli [OPTIONS] [COMMAND]
```

**Example:**

```bash
nmcli d
```

---

### `netstat` — Network Statistics

Displays network connections, routing tables, and interface statistics.

```bash
netstat [OPTIONS]
```

**Example:**

```bash
netstat -tuln
```

---

### `ss` — Socket Statistics

Displays socket statistics (modern replacement for netstat).

```bash
ss [OPTIONS]
```

**Example:**

```bash
ss -tuln
```

---

### `ufw` — Uncomplicated Firewall

Simple interface for managing firewall rules.

```bash
ufw [COMMAND] [OPTIONS]
```

**Example:**

```bash
ufw enable
```

---

### `iptables` — IPv4 Packet Filtering

Advanced tool for configuring firewall rules.

```bash
iptables [OPTIONS]
```

**Example:**

```bash
iptables -L
```

---

## 💡 Guided Examples

1. In the `PLAYGROUND/networking/` directory, run the following commands and redirect their output to files:
   ```bash
   ifconfig > ifconfig.txt
   ip address > ip.txt
   ss -tuln > ss.txt
   netstat -tuln > netstat.txt
   ```
2. Use `nmcli` to list devices (if available):
   ```bash
   nmcli d > nmcli.txt
   ```
3. Use `ufw` to check firewall status (if available):
   ```bash
   sudo ufw status > ufw_status.txt
   ```

---

## 🧪 Practice Exercises

1. **Interface Info:**
   - Use `ifconfig` and `ip address` to view network interfaces. Redirect output to `ifconfig.txt` and `ip.txt` in `PLAYGROUND/networking/`.
2. **Socket and Connection Info:**
   - Use `ss -tuln` and `netstat -tuln` to view open sockets and listening ports. Redirect output to `ss.txt` and `netstat.txt`.
3. **Firewall and Devices:**
   - Use `nmcli` and `ufw` (if available) to check network devices and firewall status. Redirect output to `nmcli.txt` and `ufw_status.txt`.

---

## ✅ Progress Check (Optional)

After completing the exercises, create a marker file named `.network_check` in `PLAYGROUND/networking/`:

```bash
touch PLAYGROUND/networking/.network_check
```

This helps automated scripts verify your progress in this lesson.

_Next up: Learn about shell scripting in Lesson 112!_
