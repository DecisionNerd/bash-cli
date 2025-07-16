# 102. File and Folder Management

Understand how to create, delete, and identify files and directories.

## `touch` — Create empty file

**Syntax:**

```bash
touch [FILE]
```

**Examples:**

```bash
touch notes.txt
touch /home/$USER/notes.txt
```

## `rm` — Remove files/directories

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

## `file` — Determine file type

**Syntax:**

```bash
file <FILENAME>
```
