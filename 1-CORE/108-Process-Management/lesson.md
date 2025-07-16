# 108. Process Management

Manage running programs and background jobs.

## Linux signals

- `SIGINT` (CTRL+C): Interrupt
- `SIGSTOP` (CTRL+Z): Pause
- `SIGCONT`: Resume
- `SIGKILL` (9): Force kill

## `ps` — Show processes

**Syntax:**

```bash
ps [OPTIONS]
```

**Examples:**

```bash
ps aux
ps -u $USER
```

## `lsof` — List open files

**Syntax:**

```bash
lsof [OPTIONS]
```

**Example:**

```bash
lsof -i
```

## `kill` — Terminate process

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

## `killall` — Kill by name

**Syntax:**

```bash
killall [OPTIONS] <NAME>
```

**Examples:**

```bash
killall firefox
killall -9 firefox
```

## `wait` — Wait for process

```bash
wait [PID]
```

## `sleep` — Pause execution

```bash
sleep <SECONDS>
```

## `jobs` — List jobs

```bash
jobs
```

## `fg` — Foreground job

```bash
fg [JOB_ID]
```

## `bg` — Background job

```bash
bg [JOB_ID]
```
