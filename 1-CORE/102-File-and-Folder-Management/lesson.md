# 102. File and Folder Management

## 📝 Summary

Managing files and folders is a core skill for anyone using the Linux command line. In this lesson, you'll learn how to create, delete, and identify files and directories. These skills build on your navigation knowledge and prepare you for more advanced tasks like scripting and automation.

## 🎯 Learning Objectives

- Create new files using the `touch` command
- Remove files and directories safely with `rm` (and its options)
- Identify file types using the `file` command
- Practice file management in the `PLAYGROUND/files` directory
- Prepare for working with permissions and searching in upcoming lessons

## 📚 Lesson Content

### Creating Files: `touch`

The `touch` command creates an empty file if it doesn't exist, or updates the timestamp if it does.

**Syntax:**

```bash
touch [FILE]
```

**Examples:**

```bash
touch notes.txt
touch /home/$USER/notes.txt
```

---

### Removing Files and Folders: `rm`

The `rm` command deletes files and, with options, directories. Use with care—deleted files are not moved to a trash bin!

**Syntax:**

```bash
rm [OPTION] <FILE>
```

**Common Options:**

- `-r` Recursive (for directories)
- `-f` Force (ignore nonexistent files, never prompt)

**Examples:**

```bash
rm notes.txt
rm -r myfolder
rm -rf myfolder
```

---

### Identifying File Types: `file`

The `file` command tells you what kind of file something is (text, directory, archive, etc.).

**Syntax:**

```bash
file <FILENAME>
```

**Example:**

```bash
file archive.tar.gz
```

---

## 💡 Guided Examples

### Example 1: Create and Identify a File

1. Navigate to the `PLAYGROUND/files` directory.
2. Create a new file:
   ```bash
   touch lesson102.txt
   ```
3. Check its type:
   ```bash
   file lesson102.txt
   ```

### Example 2: Remove a File and a Directory

1. Still in `PLAYGROUND/files`, create a folder and a file inside it:
   ```bash
   mkdir tempdir
   touch tempdir/tempfile.txt
   ```
2. Remove the file:
   ```bash
   rm tempdir/tempfile.txt
   ```
3. Remove the directory:
   ```bash
   rmdir tempdir
   ```
   (If the directory is not empty, use `rm -r tempdir`.)

---

## 🧪 Practice Exercises

1. **Create a File:**
   - In `PLAYGROUND/files`, create a file named `practice102.txt`.
2. **Delete a File:**
   - Remove `practice102.txt`.
3. **Create and Remove a Directory:**
   - Make a directory called `testdir102` and then remove it.
4. **File Type Check:**
   - Use `file` to check the type of `file/file.txt` and `file/archive/archive.tar.gz`.
5. **Challenge:**
   - Create a file, move it into a new directory, then delete both using a single command.

---

## ✅ Progress Check (Optional)

After completing the exercises, create a marker file in `PLAYGROUND/files` named `.lesson102_complete`:

```bash
touch .lesson102_complete
```

This helps automated scripts verify your progress in this lesson.

_Next up: You'll learn about file permissions and ownership in Lesson 103!_
