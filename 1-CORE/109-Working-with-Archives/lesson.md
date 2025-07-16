# 109. Working with Archives

Compress and extract files using common archiving tools.

## `tar` — Archive/compress files

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

## `7z` — 7-Zip archiver

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
