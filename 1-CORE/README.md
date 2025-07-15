# Core Lessons

A comprehensive reference for basic Linux terminal commands and Bash CLI usage. This guide is structured to help beginners build foundational skills step by step, starting from navigation and file management, through permissions, searching, process control, networking, scripting, and more. Each section includes syntax, options, and practical examples.

---

## Table of Contents

- [Core Lessons](#core-lessons)
  - [Table of Contents](#table-of-contents)
  - [101. Basic Navigation](#101-basic-navigation)
    - [`ls` — List directory contents](#ls--list-directory-contents)
    - [`pwd` — Print working directory](#pwd--print-working-directory)
    - [`cd` — Change directory](#cd--change-directory)
  - [102. File and Folder Management](#102-file-and-folder-management)
    - [`touch` — Create empty file](#touch--create-empty-file)
    - [`rm` — Remove files/directories](#rm--remove-filesdirectories)
    - [`file` — Determine file type](#file--determine-file-type)
  - [103. User Permissions](#103-user-permissions)
    - [`chmod` — Change file permissions](#chmod--change-file-permissions)
    - [`chown` — Change file owner/group](#chown--change-file-ownergroup)
  - [104. Searching and Finding Files](#104-searching-and-finding-files)
    - [`find` — Search for files/directories](#find--search-for-filesdirectories)
    - [`which` — Locate executable](#which--locate-executable)
    - [`grep` — Search text in files](#grep--search-text-in-files)
  - [105. Viewing System and Hardware Information](#105-viewing-system-and-hardware-information)
    - [Special files](#special-files)
    - [`dmidecode` — Hardware info](#dmidecode--hardware-info)
    - [`lsusb` — List USB devices](#lsusb--list-usb-devices)
    - [`lspci` — List PCI devices](#lspci--list-pci-devices)
  - [106. Shell Basics](#106-shell-basics)
    - [`history` — Show command history](#history--show-command-history)
    - [Pipes `|` — Send output to another command](#pipes---send-output-to-another-command)
    - [Redirects `<`, `>`, `>>` — Input/output redirection](#redirects-----inputoutput-redirection)
    - [Reserved words](#reserved-words)
  - [107. Standard Input, Output, and Error](#107-standard-input-output-and-error)
    - [IO Streams `0 1 2`](#io-streams-0-1-2)
  - [108. Process Management](#108-process-management)
    - [Linux signals](#linux-signals)
    - [`ps` — Show processes](#ps--show-processes)
    - [`lsof` — List open files](#lsof--list-open-files)
    - [`kill` — Terminate process](#kill--terminate-process)
    - [`killall` — Kill by name](#killall--kill-by-name)
    - [`wait` — Wait for process](#wait--wait-for-process)
    - [`sleep` — Pause execution](#sleep--pause-execution)
    - [`jobs` — List jobs](#jobs--list-jobs)
    - [`fg` — Foreground job](#fg--foreground-job)
    - [`bg` — Background job](#bg--background-job)
  - [109. Working with Archives](#109-working-with-archives)
    - [`tar` — Archive/compress files](#tar--archivecompress-files)
    - [`7z` — 7-Zip archiver](#7z--7-zip-archiver)
  - [110. Package Management](#110-package-management)
    - [Ubuntu/Debian](#ubuntudebian)
      - [`dpkg` — Debian package manager](#dpkg--debian-package-manager)
      - [`apt` — Advanced Package Tool](#apt--advanced-package-tool)
      - [`snap` — Snap packages](#snap--snap-packages)
  - [111. Networking](#111-networking)
    - [`ifconfig` — Network interfaces](#ifconfig--network-interfaces)
    - [`iwconfig` — Wireless interfaces](#iwconfig--wireless-interfaces)
    - [`ip` — Routing/devices](#ip--routingdevices)
    - [`iw` — Wireless devices](#iw--wireless-devices)
    - [`nmcli` — NetworkManager CLI](#nmcli--networkmanager-cli)
    - [`netstat` — Network statistics](#netstat--network-statistics)
    - [`ss` — Socket statistics](#ss--socket-statistics)
    - [`ufw` — Uncomplicated Firewall](#ufw--uncomplicated-firewall)
    - [`iptables` — IPv4 packet filtering](#iptables--ipv4-packet-filtering)
  - [112. Shell Scripting](#112-shell-scripting)
    - [Command substitution](#command-substitution)
    - [Command separators](#command-separators)
  - [113. Help Resources](#113-help-resources)

---

## 101. Basic Navigation

Learn how to move around the filesystem and view directory contents.

### `ls` — List directory contents

**Syntax:**

```bash
ls [OPTION] [DIRECTORY]
```

**Options:**

- `-a` List all files including hidden
- `-l` Long format with extra info
- `-h` Human-readable sizes

**Examples:**

```bash
ls -alh
ls /etc/systemd/
```

### `pwd` — Print working directory

**Syntax:**

```bash
pwd
```

### `cd` — Change directory

**Syntax:**

```bash
cd [DIRECTORY]
```

**Special directories:**

- `.` Current directory
- `..` Parent directory
- `~` Home directory
- `-` Previous directory

**Examples:**

```bash
cd
cd /home/$USER/
cd /
```

---

## 102. File and Folder Management

Understand how to create, delete, and identify files and directories.

### `touch` — Create empty file

**Syntax:**

```bash
touch [FILE]
```

**Examples:**

```bash
touch notes.txt
touch /home/$USER/notes.txt
```

### `rm` — Remove files/directories

**Syntax:**

```bash
rm [OPTION] <FILE>
```

**Options:**

- `-r` Recursive
- `-f` Force

**Examples:**

```bash
rm notes.txt
rm -r myfiles
```

### `file` — Determine file type

**Syntax:**

```bash
file <FILENAME>
```

---

## 103. User Permissions

Learn how to view and modify file and directory permissions and ownership.

### `chmod` — Change file permissions

**Syntax:**

```bash
chmod [OPTION] <FILE>
```

**Options:**

- `-R` Recursive

**Examples:**

```bash
chmod 644 notes.txt
chmod -R a+x scripts/
```

### `chown` — Change file owner/group

**Syntax:**

```bash
chown [OPTIONS] <USER>:<GROUP> <FILE>
```

**Options:**

- `-R` Recursive

**Examples:**

```bash
chown root:root notes.txt
```

---

## 104. Searching and Finding Files

Find files and search for text within files.

### `find` — Search for files/directories

**Syntax:**

```bash
find <PATH> <TEST> <PATTERN>
```

**Tests:**

- `-name` By name
- `-group` By group
- `-user` By user
- `-path` By path

**Examples:**

```bash
find /home -name "*.txt"
find /home -name "*.txt" 2> /dev/null
```

### `which` — Locate executable

**Syntax:**

```bash
which [OPTIONS] <FILE>
```

**Options:**

- `-a` All matches

**Example:**

```bash
which bash
```

### `grep` — Search text in files

**Syntax:**

```bash
grep [OPTIONS] <STRING> <FILE>
```

**Options:**

- `-i` Case-insensitive
- `-r` Recursive

**Example:**

```bash
grep -i "error" logfile.txt
```

---

## 105. Viewing System and Hardware Information

Learn how to view information about your system and hardware.

### Special files

- `/proc/cpuinfo` — CPU info
- `/proc/meminfo` — Memory info

**Examples:**

```bash
cat /proc/cpuinfo
cat /proc/meminfo
```

### `dmidecode` — Hardware info

```bash
dmidecode
```

### `lsusb` — List USB devices

```bash
lsusb
```

### `lspci` — List PCI devices

```bash
lspci
```

---

## 106. Shell Basics

Understand how the shell works, including history, pipes, redirects, and reserved words.

### `history` — Show command history

**Syntax:**

```bash
history [OPTION]
```

**Options:**

- `-c` Clear history

**Files:**

- `.bash_history`, `.zsh_history`, `.fish_history`

### Pipes `|` — Send output to another command

**Syntax:**

```bash
command1 | command2
```

**Example:**

```bash
ls | grep "pattern"
```

### Redirects `<`, `>`, `>>` — Input/output redirection

**Syntax:**

```bash
command > file
command >> file
command1 < file
```

**Examples:**

```bash
ls > output.txt
cat < input.txt
```

### Reserved words

- See shell documentation for a list of reserved words.

---

## 107. Standard Input, Output, and Error

Learn about standard streams and how to redirect them.

### IO Streams `0 1 2`

**Syntax:**

```bash
command 1> output.txt 2> error.txt
```

**Example:**

```bash
command 1> output.txt 2> error.txt
```

---

## 108. Process Management

Manage running programs and background jobs.

### Linux signals

- `SIGINT` (CTRL+C): Interrupt
- `SIGSTOP` (CTRL+Z): Pause
- `SIGCONT`: Resume
- `SIGKILL` (9): Force kill

### `ps` — Show processes

**Syntax:**

```bash
ps [OPTIONS]
```

**Examples:**

```bash
ps aux
ps -u $USER
```

### `lsof` — List open files

**Syntax:**

```bash
lsof [OPTIONS]
```

**Example:**

```bash
lsof -i
```

### `kill` — Terminate process

**Syntax:**

```bash
kill [OPTIONS] <PID>
```

**Examples:**

```bash
kill 1234
kill -9 1234
kill -SIGCONT 1234
```

### `killall` — Kill by name

**Syntax:**

```bash
killall [OPTIONS] <NAME>
```

**Examples:**

```bash
killall firefox
killall -9 firefox
```

### `wait` — Wait for process

```bash
wait [PID]
```

### `sleep` — Pause execution

```bash
sleep <SECONDS>
```

### `jobs` — List jobs

```bash
jobs
```

### `fg` — Foreground job

```bash
fg [JOB_ID]
```

### `bg` — Background job

```bash
bg [JOB_ID]
```

---

## 109. Working with Archives

Compress and extract files using common archiving tools.

### `tar` — Archive/compress files

**Syntax:**

```bash
tar [OPTIONS]
```

**Options:**

- `-c` Create archive
- `-x` Extract
- `-f` Specify file
- `-v` Verbose
- `-z` Gzip

**Examples:**

```bash
tar -xf archive.tar
tar -xzf archive.tar.gz
tar -vzf archive.tar directory
```

### `7z` — 7-Zip archiver

**Syntax:**

```bash
7z [OPTIONS]
```

**Common commands:**

- `a <ARCHIVE> [INPUT]` Add to archive
- `e <ARCHIVE>` Extract
- `l <ARCHIVE>` List contents

**Examples:**

```bash
7z e archive.7z
7z a archive.7z directory
7z a archive.7z *.txt
```

---

## 110. Package Management

Install and manage software packages on your system.

### Ubuntu/Debian

#### `dpkg` — Debian package manager

**Syntax:**

```bash
dpkg [OPTIONS] [PACKAGE]
```

**Example:**

```bash
dpkg -l
```

#### `apt` — Advanced Package Tool

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

#### `snap` — Snap packages

**Syntax:**

```bash
snap [OPTIONS] [COMMAND]
```

**Example:**

```bash
snap install vlc
```

---

## 111. Networking

View and manage network interfaces and connections.

### `ifconfig` — Network interfaces

```bash
ifconfig [INTERFACE]
```

### `iwconfig` — Wireless interfaces

```bash
iwconfig [INTERFACE]
```

### `ip` — Routing/devices

```bash
ip [COMMAND]
```

**Example:**

```bash
ip address
```

### `iw` — Wireless devices

```bash
iw [COMMAND]
```

**Example:**

```bash
iw dev
```

### `nmcli` — NetworkManager CLI

```bash
nmcli [OPTIONS] [COMMAND]
```

**Example:**

```bash
nmcli d
```

### `netstat` — Network statistics

```bash
netstat [OPTIONS]
```

**Example:**

```bash
netstat -tuln
```

### `ss` — Socket statistics

```bash
ss [OPTIONS]
```

**Example:**

```bash
ss -tuln
```

### `ufw` — Uncomplicated Firewall

```bash
ufw [COMMAND] [OPTIONS]
```

**Example:**

```bash
ufw enable
```

### `iptables` — IPv4 packet filtering

```bash
iptables [OPTIONS]
```

**Example:**

```bash
iptables -L
```

---

## 112. Shell Scripting

Automate tasks and combine commands using shell scripting basics.

### Command substitution

**Syntax:**

```bash
result=$(command)
result=`command`
```

**Example:**

```bash
CURRENT_DATE=$(date)
```

### Command separators

**Syntax:**

```bash
command1; command2
command1 && command2
```

**Examples:**

```bash
echo "Hello"; echo "World"
mkdir newdir && cd newdir
```

---

## 113. Help Resources

For more details, see the man pages for each command (e.g., `man ls`).
