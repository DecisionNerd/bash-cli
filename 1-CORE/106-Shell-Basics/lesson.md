# 106. Shell Basics

## 📝 Summary

The shell is your command-line interface to the operating system. In this lesson, you'll learn about command history, pipes, redirects, and reserved words—fundamental concepts for working efficiently in any shell environment.

## 🎯 Learning Objectives

- Use `history` to view and manage command history
- Use pipes (`|`) to connect commands
- Use redirects (`>`, `>>`, `<`) to control input and output
- Recognize reserved words in the shell
- Practice these concepts in the `PLAYGROUND/environment/` directory

## 📚 Lesson Content

### What is a Shell?

A shell is a program that interprets your commands and interacts with the operating system. Common shells include Bash, Zsh, and Fish.

---

### `history` — Show Command History

The `history` command displays your previous commands.

**Syntax:**

```bash
history [OPTION]
```

**Options:**

- `-c` Clear history

**Files:**

- `.bash_history`, `.zsh_history`, `.fish_history`

**Example:**

```bash
history
```

---

### Pipes `|` — Send Output to Another Command

Pipes connect the output of one command to the input of another.

**Syntax:**

```bash
command1 | command2
```

**Example:**

```bash
ls | grep "pattern"
```

---

### Redirects `<`, `>`, `>>` — Input/Output Redirection

Redirects control where command input comes from and where output goes.

**Syntax:**

```bash
command > file      # Write output to file (overwrite)
command >> file     # Append output to file
command < file      # Use file as input
```

**Examples:**

```bash
ls > output.txt
cat < output.txt
```

---

### Reserved Words

Reserved words are special words used by the shell (e.g., `if`, `then`, `else`, `fi`, `for`, `while`). See your shell's documentation for a full list.

---

## 💡 Guided Examples

1. In the `PLAYGROUND/environment/` directory, run a few commands (e.g., `ls`, `pwd`, `echo Hello`).
2. Use `history` to view your recent commands:
   ```bash
   history
   ```
3. Use a pipe to filter output:
   ```bash
   ls | grep ".txt"
   ```
4. Redirect output to a file:
   ```bash
   echo "Shell basics practice" > PLAYGROUND/environment/shell_output.txt
   ```

---

## 🧪 Practice Exercises

1. **History Practice:**
   - Run at least three different commands in `PLAYGROUND/environment/`.
   - Use `history` and redirect the output to `history_output.txt` in `PLAYGROUND/environment/`.
2. **Pipe and Redirect Practice:**
   - Use a pipe to filter the output of `ls` for `.txt` files and redirect the result to `txt_files.txt` in `PLAYGROUND/environment/`.
3. **Challenge:**
   - Use input redirection to display the contents of `txt_files.txt` using `cat < txt_files.txt`.

---

## ✅ Progress Check (Optional)

After completing the exercises, create a marker file named `.shell_check` in `PLAYGROUND/environment/`:

```bash
touch PLAYGROUND/environment/.shell_check
```

This helps automated scripts verify your progress in this lesson.

_Next up: Learn about standard input, output, and error in Lesson 107!_
