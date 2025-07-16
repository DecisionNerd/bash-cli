# 108. Process Management

## 📝 Summary

Process management is essential for controlling running programs, troubleshooting, and optimizing system performance. In this lesson, you'll learn how to view, control, and manage processes and jobs in Linux.

## 🎯 Learning Objectives

- List and inspect running processes
- Send signals to processes (stop, continue, kill)
- Manage background and foreground jobs
- Practice process management in the `PLAYGROUND/processes/` directory

## 📚 Lesson Content

### What is a Process?

A process is a running instance of a program. Linux allows you to view, control, and manage these processes using various commands.

---

### Linux Signals

- `SIGINT` (CTRL+C): Interrupt
- `SIGSTOP` (CTRL+Z): Pause
- `SIGCONT`: Resume
- `SIGKILL` (9): Force kill

---

### `ps` — Show Processes

Lists running processes.

**Syntax:**

```bash
ps [OPTIONS]
```

**Examples:**

```bash
ps aux
ps -u $USER
```

---

### `lsof` — List Open Files

Shows files opened by processes.

**Syntax:**

```bash
lsof [OPTIONS]
```

**Example:**

```bash
lsof -i
```

---

### `kill` — Terminate Process

Sends a signal to a process to terminate or control it.

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

---

### `killall` — Kill by Name

Sends a signal to all processes with a given name.

**Syntax:**

```bash
killall [OPTIONS] <NAME>
```

**Examples:**

```bash
killall firefox
killall -9 firefox
```

---

### `wait` — Wait for Process

Waits for a process to finish.

```bash
wait [PID]
```

---

### `sleep` — Pause Execution

Pauses for a specified number of seconds.

```bash
sleep <SECONDS>
```

---

### `jobs` — List Jobs

Lists background and stopped jobs in the current shell.

```bash
jobs
```

---

### `fg` and `bg` — Foreground/Background Jobs

- `fg [JOB_ID]`: Bring a job to the foreground
- `bg [JOB_ID]`: Resume a job in the background

---

## 💡 Guided Examples

1. In the `PLAYGROUND/processes/` directory, start a background job:
   ```bash
   sleep 30 &
   ```
2. List running jobs:
   ```bash
   jobs
   ```
3. Bring the job to the foreground:
   ```bash
   fg %1
   ```
4. Start another background job and kill it:
   ```bash
   sleep 60 &
   kill %2
   ```

---

## 🧪 Practice Exercises

1. **List Processes:**
   - Use `ps` to list all processes and redirect the output to `ps_output.txt` in `PLAYGROUND/processes/`.
2. **Start and Kill a Job:**
   - Start a background job with `sleep 10 &` and use `jobs` to confirm it's running. Kill it with `kill` or `kill %<job_number>`.
3. **Open Files:**
   - Use `lsof` to list open files and redirect the output to `lsof_output.txt` in `PLAYGROUND/processes/`.

---

## ✅ Progress Check (Optional)

After completing the exercises, create a marker file named `.process_check` in `PLAYGROUND/processes/`:

```bash
touch PLAYGROUND/processes/.process_check
```

This helps automated scripts verify your progress in this lesson.

_Next up: Learn about working with archives in Lesson 109!_
