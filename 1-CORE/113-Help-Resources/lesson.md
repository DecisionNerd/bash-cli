# 113. Help Resources

## 📝 Summary

Knowing how to find help and documentation is essential for learning and troubleshooting on the command line. In this lesson, you'll learn how to use built-in help resources like `man`, `--help`, and online resources.

## 🎯 Learning Objectives

- Use `man` pages to read command documentation
- Use `--help` and `help` for quick command references
- Know where to find additional help online
- Practice using help resources in the `PLAYGROUND/` directory

## 📚 Lesson Content

### Why Use Help Resources?

No one memorizes every command or option. Help resources let you quickly find the information you need.

---

### `man` — Manual Pages

Displays detailed documentation for commands.

```bash
man <command>
```

**Example:**

```bash
man ls
```

---

### `--help` and `help` — Quick References

Most commands support the `--help` option for a summary of usage.

```bash
ls --help
```

Shell built-ins (like `cd`, `echo`) use the `help` command:

```bash
help cd
```

---

### Online Resources

- `tldr <command>` — Community-driven simplified man pages (install with `sudo apt install tldr`)
- Official documentation and forums (e.g., Stack Overflow, Linux man pages online)

---

## 💡 Guided Examples

1. Use `man` to read about the `ls` command:
   ```bash
   man ls
   ```
2. Use `--help` to see options for `cp`:
   ```bash
   cp --help > PLAYGROUND/cp_help.txt
   ```
3. Use `help` to read about shell built-ins:
   ```bash
   help cd > PLAYGROUND/cd_help.txt
   ```
4. (Optional) Use `tldr` for a simplified summary:
   ```bash
   tldr ls > PLAYGROUND/tldr_ls.txt
   ```

---

## 🧪 Practice Exercises

1. **Man Page Practice:**
   - Use `man` to read about the `mv` command.
2. **Help Option Practice:**
   - Use `--help` with `rm` and redirect the output to `rm_help.txt` in `PLAYGROUND/`.
3. **Shell Built-in Help:**
   - Use `help` with `echo` and redirect the output to `echo_help.txt` in `PLAYGROUND/`.
4. **TLDR Practice (Optional):**
   - If installed, use `tldr` with `cat` and redirect the output to `tldr_cat.txt` in `PLAYGROUND/`.

---

## ✅ Progress Check (Optional)

After completing the exercises, create a marker file named `.help_check` in `PLAYGROUND/`:

```bash
touch PLAYGROUND/.help_check
```

This helps automated scripts verify your progress in this lesson.

_Congratulations! You've completed the core lessons. Continue exploring and practicing your command-line skills!_
