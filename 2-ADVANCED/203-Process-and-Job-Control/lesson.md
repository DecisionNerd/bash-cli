# 203. Process & Job Control

## Learning Objectives

- Manage background and persistent jobs
- Adjust process priorities
- Use job control commands effectively

## Introduction

Process and job control lets you run tasks in the background, keep them running after logout, and manage their priorities. This lesson covers essential commands for job control.

---

## 1. Disowning Jobs

Run a job in the background and disown it so it isn't tied to your shell session.

**Example:**

```bash
sleep 1000 &
disown
```

---

## 2. nohup

Keep a command running after logout using `nohup`.

**Example:**

```bash
nohup long_running_command &
```

---

## 3. nice/renice

Adjust the priority of a process with `nice` and `renice`.

**Example:**

```bash
nice -n 10 command
renice 5 <PID>
```

---

## Practical Exercise

1. Start a background job and disown it. Verify it keeps running after closing the terminal.
2. Use `nohup` to run a command and check that it continues after logout.
3. Start a process with `nice` and change its priority with `renice`.

---

## Next Steps

- Explore advanced process management tools in the next lesson.
