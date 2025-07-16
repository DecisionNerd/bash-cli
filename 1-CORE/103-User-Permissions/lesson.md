# 103. User Permissions

## 📝 Summary

Understanding file and directory permissions is essential for system security and collaboration. In this lesson, you'll learn how to view, modify, and manage permissions and ownership using `chmod` and `chown`. Mastering these commands helps you control who can read, write, or execute files, and how to safely share resources.

## 🎯 Learning Objectives

- Understand Linux file permission concepts (read, write, execute)
- Use `chmod` to change file and directory permissions
- Use `chown` to change file and directory ownership
- Practice safe permission management in the `PLAYGROUND` folder

## 📚 Lesson Content

### What are Permissions and Ownership?

Every file and directory in Linux has permissions (read, write, execute) and an owner (user and group). Permissions control who can access or modify files.

---

### `chmod` — Change File Permissions

The `chmod` command changes file or directory permissions.

**Syntax:**

```bash
chmod [OPTIONS] <PERMISSIONS> <FILE>
```

**Options:**

- `-R` Recursive (apply to all files in a directory)

**Examples:**

```bash
chmod 644 notes.txt      # Owner can read/write, others can read
chmod -R a+x scripts/    # Everyone can execute all files in scripts/
```

---

### `chown` — Change File Owner/Group

The `chown` command changes the owner and group of a file or directory.

**Syntax:**

```bash
chown [OPTIONS] <USER>:<GROUP> <FILE>
```

**Options:**

- `-R` Recursive

**Examples:**

```bash
chown root:root notes.txt    # Change owner and group to root
```

---

## 💡 Guided Examples

1. In the `PLAYGROUND/permissions/` folder, create a file named `perm_test.txt`:
   ```bash
   touch PLAYGROUND/permissions/perm_test.txt
   ```
2. Change its permissions so only the owner can read and write:
   ```bash
   chmod 600 PLAYGROUND/permissions/perm_test.txt
   ```
3. (Optional) Change its owner to your user and group (replace `$(whoami)` with your username):
   ```bash
   sudo chown $(whoami):$(whoami) PLAYGROUND/permissions/perm_test.txt
   ```

---

## 🧪 Practice Exercises

1. **Permission Practice:**
   - In `PLAYGROUND/permissions/`, create a file called `practice_perm.txt`.
   - Set its permissions to `rw-r--r--` (use `chmod 644`).
2. **Ownership Practice:**
   - Change the owner of `practice_perm.txt` to your user (if not already).
3. **Challenge:**
   - Create a directory `secret_dir` and set its permissions so only you can access it (`chmod 700`).

---

## ✅ Progress Check (Optional)

After completing the exercises, create a marker file named `.perm_check` in `PLAYGROUND/permissions/`:

```bash
touch PLAYGROUND/permissions/.perm_check
```

This helps automated scripts verify your progress in this lesson.

_Next up: Learn about searching and finding files in Lesson 104!_
