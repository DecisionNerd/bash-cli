# 104. Searching and Finding Files

## 📝 Summary

Being able to quickly find files and search for content is a core skill for any Linux user. In this lesson, you'll learn how to locate files and directories, and search for text within files using `find`, `which`, and `grep`. These tools help you navigate large systems and troubleshoot efficiently.

## 🎯 Learning Objectives

- Use `find` to search for files and directories by name, type, or other criteria
- Use `which` to locate executables in your PATH
- Use `grep` to search for text within files
- Practice searching in the `PLAYGROUND/search/` directory

## 📚 Lesson Content

### Why Search?

Linux systems can have thousands of files. Searching helps you locate what you need and extract information quickly.

---

### `find` — Search for Files/Directories

The `find` command searches for files and directories in a directory hierarchy.

**Syntax:**

```bash
find <PATH> <TEST> <PATTERN>
```

**Common Tests:**

- `-name` By name
- `-type` By type (e.g., `-type f` for files, `-type d` for directories)
- `-user` By owner
- `-group` By group

**Examples:**

```bash
find . -name "*.txt"           # Find all .txt files in current directory and subdirectories
find /home -type d -name "docs" # Find directories named 'docs' under /home
find . -user $(whoami)           # Find files owned by your user
```

---

### `which` — Locate Executable

The `which` command shows the full path of shell commands/executables.

**Syntax:**

```bash
which [OPTIONS] <COMMAND>
```

**Options:**

- `-a` Show all matches in PATH

**Example:**

```bash
which bash
```

---

### `grep` — Search Text in Files

The `grep` command searches for patterns in files.

**Syntax:**

```bash
grep [OPTIONS] <PATTERN> <FILE>
```

**Options:**

- `-i` Case-insensitive
- `-r` Recursive (search subdirectories)

**Examples:**

```bash
grep -i "error" logfile.txt         # Find 'error' (case-insensitive) in logfile.txt
grep -r "TODO" .                    # Recursively search for 'TODO' in all files in current directory
```

---

## 💡 Guided Examples

1. In the `PLAYGROUND/search/` directory, create a file called `findme.txt` and a subdirectory `grepme/` with a file `grepme.txt`:
   ```bash
   touch PLAYGROUND/search/findme.txt
   mkdir -p PLAYGROUND/search/grepme
   echo "This is a test. Find this line." > PLAYGROUND/search/grepme/grepme.txt
   ```
2. Use `find` to locate `findme.txt`:
   ```bash
   find PLAYGROUND/search -name "findme.txt"
   ```
3. Use `grep` to search for the word "test" in all files under `PLAYGROUND/search/`:
   ```bash
   grep -r "test" PLAYGROUND/search/
   ```

---

## 🧪 Practice Exercises

1. **Find Practice:**
   - Create a file called `practice104.txt` in `PLAYGROUND/search/`.
   - Use `find` to confirm its location.
2. **Grep Practice:**
   - Add the line "Linux search is powerful" to `practice104.txt`.
   - Use `grep` to find the word "powerful" in `PLAYGROUND/search/`.
3. **Challenge:**
   - Use `which` to find the path to the `bash` executable on your system.

---

## ✅ Progress Check (Optional)

After completing the exercises, create a marker file named `.search_check` in `PLAYGROUND/search/`:

```bash
touch PLAYGROUND/search/.search_check
```

This helps automated scripts verify your progress in this lesson.

_Next up: Learn about viewing system and hardware information in Lesson 105!_
