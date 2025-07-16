# 103. User Permissions

Learn how to view and modify file and directory permissions and ownership.

## `chmod` — Change file permissions

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

## `chown` — Change file owner/group

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
