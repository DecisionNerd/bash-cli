# 104. Searching and Finding Files

Find files and search for text within files.

## `find` — Search for files/directories

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

## `which` — Locate executable

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

## `grep` — Search text in files

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
