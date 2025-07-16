# 110. Package Management

Install and manage software packages on your system.

## Ubuntu/Debian

### `dpkg` — Debian package manager

**Syntax:**

```bash
dpkg [OPTIONS] [PACKAGE]
```

**Example:**

```bash
dpkg -l
```

### `apt` — Advanced Package Tool

**Syntax:**

```bash
apt [OPTIONS] [COMMAND]
```

**Options:**

- `-y` Assume yes
  **Commands:**
- `update`, `upgrade`, `install`, `remove`, `autoremove`, `search`, `show`

**Examples:**

```bash
sudo apt update
sudo apt update -y && sudo apt upgrade -y
sudo apt install -y nginx
```

### `snap` — Snap packages

**Syntax:**

```bash
snap [OPTIONS] [COMMAND]
```

**Example:**

```bash
snap install vlc
```
