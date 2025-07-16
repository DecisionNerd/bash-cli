# 111. Networking

View and manage network interfaces and connections.

## `ifconfig` — Network interfaces

```bash
ifconfig [INTERFACE]
```

## `iwconfig` — Wireless interfaces

```bash
iwconfig [INTERFACE]
```

## `ip` — Routing/devices

```bash
ip [COMMAND]
```

**Example:**

```bash
ip address
```

## `iw` — Wireless devices

```bash
iw [COMMAND]
```

**Example:**

```bash
iw dev
```

## `nmcli` — NetworkManager CLI

```bash
nmcli [OPTIONS] [COMMAND]
```

**Example:**

```bash
nmcli d
```

## `netstat` — Network statistics

```bash
netstat [OPTIONS]
```

**Example:**

```bash
netstat -tuln
```

## `ss` — Socket statistics

```bash
ss [OPTIONS]
```

**Example:**

```bash
ss -tuln
```

## `ufw` — Uncomplicated Firewall

```bash
ufw [COMMAND] [OPTIONS]
```

**Example:**

```bash
ufw enable
```

## `iptables` — IPv4 packet filtering

```bash
iptables [OPTIONS]
```

**Example:**

```bash
iptables -L
```
