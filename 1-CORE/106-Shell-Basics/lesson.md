# 106. Shell Basics

Understand how the shell works, including history, pipes, redirects, and reserved words.

## `history` — Show command history

**Syntax:**

```bash
history [OPTION]
```

**Options:**

- `-c` Clear history

**Files:**

- `.bash_history`, `.zsh_history`, `.fish_history`

## Pipes `|` — Send output to another command

**Syntax:**

```bash
command1 | command2
```

**Example:**

```bash
ls | grep "pattern"
```

## Redirects `<`, `>`, `>>` — Input/output redirection

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

## Reserved words

- See shell documentation for a list of reserved words.
