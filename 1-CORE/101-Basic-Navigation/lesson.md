# 101. Basic Navigation

## 📝 Summary

Navigating the Linux filesystem is the foundation of working with the command line. In this lesson, you'll learn how to view directory contents, understand where you are in the system, and move between folders using essential commands. Mastering these basics will prepare you for managing files, scripting, and more advanced tasks in later lessons.

## 🎯 Learning Objectives

- Recall and use the `ls`, `pwd`, and `cd` commands to explore the filesystem
- Interpret command syntax and options for basic navigation
- Move confidently between directories, including special locations (home, parent, previous)
- Build habits for hands-on practice in the `PLAYGROUND` folder
- Prepare for file and folder management in the next lesson

## 📚 Lesson Content

### What is Navigation?

Navigation means moving around the filesystem—seeing what's in each folder, knowing your current location, and switching between directories. These skills are the first step to becoming comfortable with the Linux CLI.

---

### `ls` — List Directory Contents

The `ls` command shows the files and folders in a directory.

**Syntax:**

```bash
ls [OPTION] [DIRECTORY]
```

**Common Options:**

- `-a` Show all files, including hidden ones (those starting with `.`)
- `-l` Use a long listing format (shows permissions, size, etc.)
- `-h` Human-readable sizes (use with `-l`)

**Example:**

```bash
ls -alh
```

---

### `pwd` — Print Working Directory

The `pwd` command displays your current location in the filesystem as an absolute path.

**Syntax:**

```bash
pwd
```

---

### `cd` — Change Directory

The `cd` command moves you to a different directory.

**Syntax:**

```bash
cd [DIRECTORY]
```

**Special Directories:**

- `.` Current directory
- `..` Parent directory
- `~` Home directory
- `-` Previous directory

**Examples:**

```bash
cd        # Go to your home directory
cd /      # Go to the root directory
cd ..     # Go up one level
cd -      # Go to the previous directory
```

---

## 💡 Guided Examples

### Example 1: Explore the Playground

1. Open your terminal and navigate to the `PLAYGROUND` folder for this course.
2. List all files (including hidden ones) in the directory:
   ```bash
   ls -alh
   ```
3. Check your current location:
   ```bash
   pwd
   ```

### Example 2: Move Around and Back

1. From inside `PLAYGROUND`, create a new folder (you'll learn more about this in the next lesson):
   ```bash
   mkdir testnav
   cd testnav
   ```
2. Use `pwd` to confirm your new location.
3. Return to the previous directory:
   ```bash
   cd -
   ```
4. Go up one level:
   ```bash
   cd ..
   ```

---

## 🧪 Practice Exercises

1. **List Contents:**
   - In the `PLAYGROUND` folder, use `ls` to list all files and folders. Try adding the `-a` and `-l` options.
2. **Where Am I?:**
   - Use `pwd` to display your current directory. Change to a different folder and run `pwd` again.
3. **Move Home and Back:**
   - Use `cd` to go to your home directory, then return to `PLAYGROUND` using `cd -`.
4. **Explore Special Directories:**
   - Try using `cd .`, `cd ..`, and `cd /` from different locations. Note what happens each time.
5. **Challenge:**
   - Combine navigation commands to move from `PLAYGROUND` to a new subfolder, then back to your starting point in as few commands as possible.

---

_Next up: You'll learn how to create, delete, and identify files and folders in Lesson 102!_
