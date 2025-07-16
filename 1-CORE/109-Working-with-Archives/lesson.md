# 109. Working with Archives

## 📝 Summary

Archiving and compressing files is essential for backup, sharing, and storage efficiency. In this lesson, you'll learn how to use `tar` and `7z` to create, extract, and manage archives.

## 🎯 Learning Objectives

- Create and extract archives using `tar` and `7z`
- Understand common options for archiving tools
- Practice archiving in the `PLAYGROUND/files/` directory

## 📚 Lesson Content

### Why Use Archives?

Archives bundle multiple files into one and can compress them to save space. Common formats include `.tar`, `.tar.gz`, and `.7z`.

---

### `tar` — Archive/Compress Files

The `tar` command is used to create and extract archives.

**Syntax:**

```bash
tar [OPTIONS] [ARCHIVE] [FILES]
```

**Options:**

- `-c` Create archive
- `-x` Extract
- `-f` Specify file
- `-v` Verbose
- `-z` Gzip compression

**Examples:**

```bash
tar -cf archive.tar file1 file2      # Create archive.tar from files
 tar -xf archive.tar                 # Extract archive.tar
tar -czf archive.tar.gz directory    # Create compressed archive
tar -xzf archive.tar.gz              # Extract compressed archive
```

---

### `7z` — 7-Zip Archiver

The `7z` command (from p7zip) handles .7z and other archive formats.

**Syntax:**

```bash
7z [COMMAND] [ARCHIVE] [FILES]
```

**Common commands:**

- `a <ARCHIVE> [INPUT]` Add to archive
- `e <ARCHIVE>` Extract
- `l <ARCHIVE>` List contents

**Examples:**

```bash
7z a archive.7z directory            # Add directory to archive.7z
7z e archive.7z                      # Extract archive.7z
7z l archive.7z                      # List contents of archive.7z
```

---

## 💡 Guided Examples

1. In the `PLAYGROUND/files/` directory, create a few test files:
   ```bash
   echo "File 1" > file1.txt
   echo "File 2" > file2.txt
   mkdir testdir
   echo "File 3" > testdir/file3.txt
   ```
2. Create a tar archive:
   ```bash
   tar -cf testarchive.tar file1.txt file2.txt testdir/
   ```
3. Extract the archive:
   ```bash
   tar -xf testarchive.tar -C extracted/
   ```
4. Create a compressed archive:
   ```bash
   tar -czf testarchive.tar.gz file1.txt file2.txt testdir/
   ```
5. Use 7z to create and extract an archive:
   ```bash
   7z a testarchive.7z file1.txt file2.txt testdir/
   7z e testarchive.7z -otmp_extract/
   ```

---

## 🧪 Practice Exercises

1. **Create and Extract:**
   - Create a tar archive of all `.txt` files in `PLAYGROUND/files/` and extract it to a new directory.
2. **Compressed Archive:**
   - Create a gzip-compressed tar archive of `testdir/` and extract it.
3. **7z Practice:**
   - Use `7z` to archive and extract files in `PLAYGROUND/files/`.

---

## ✅ Progress Check (Optional)

After completing the exercises, create a marker file named `.archive_check` in `PLAYGROUND/files/`:

```bash
touch PLAYGROUND/files/.archive_check
```

This helps automated scripts verify your progress in this lesson.

_Next up: Learn about package management in Lesson 110!_
