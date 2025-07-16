# 110. Package Management

## 📝 Summary

Package management is essential for installing, updating, and removing software on Linux systems. In this lesson, you'll learn to use `dpkg`, `apt`, and `snap` to manage packages on Ubuntu/Debian systems.

## 🎯 Learning Objectives

- List installed packages
- Update package lists and upgrade software
- Install and remove packages using `apt` and `snap`
- Practice package management commands in the `PLAYGROUND/files/` directory

## 📚 Lesson Content

### Why Use a Package Manager?

Package managers automate software installation, updates, and removal, ensuring your system stays up to date and secure.

---

### `dpkg` — Debian Package Manager

Low-level tool for managing `.deb` packages.

**Syntax:**

```bash
dpkg [OPTIONS] [PACKAGE]
```

**Example:**

```bash
dpkg -l
```

---

### `apt` — Advanced Package Tool

High-level tool for managing packages and dependencies.

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
sudo apt upgrade -y
sudo apt install -y nginx
sudo apt remove -y nginx
```

---

### `snap` — Snap Packages

Manages snap packages (containerized apps).

**Syntax:**

```bash
snap [OPTIONS] [COMMAND]
```

**Example:**

```bash
snap install vlc
```

---

## 💡 Guided Examples

1. List all installed packages:
   ```bash
   dpkg -l > PLAYGROUND/files/dpkg_list.txt
   ```
2. Update package lists and upgrade packages:
   ```bash
   sudo apt update && sudo apt upgrade -y
   ```
3. Search for a package:
   ```bash
   apt search curl > PLAYGROUND/files/apt_search.txt
   ```
4. Install and remove a package (e.g., `sl`):
   ```bash
   sudo apt install -y sl
   sudo apt remove -y sl
   ```
5. Install a snap package (if supported):
   ```bash
   sudo snap install hello-world
   ```

---

## 🧪 Practice Exercises

1. **List Packages:**
   - Use `dpkg -l` and redirect the output to `dpkg_list.txt` in `PLAYGROUND/files/`.
2. **Search and Show:**
   - Use `apt search` to search for a package (e.g., `nano`) and redirect the output to `apt_search.txt` in `PLAYGROUND/files/`.
3. **Install and Remove:**
   - Install a package (e.g., `cowsay` or `sl`) and then remove it using `apt`.
4. **Snap Practice:**
   - If your system supports it, install a snap package (e.g., `hello-world`).

---

## ✅ Progress Check (Optional)

After completing the exercises, create a marker file named `.package_check` in `PLAYGROUND/files/`:

```bash
touch PLAYGROUND/files/.package_check
```

This helps automated scripts verify your progress in this lesson.

_Next up: Learn about networking in Lesson 111!_
