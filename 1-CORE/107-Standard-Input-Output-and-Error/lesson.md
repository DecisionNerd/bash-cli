# 107. Standard Input, Output, and Error

## 📝 Summary

Understanding standard input, output, and error streams is essential for controlling how commands interact with data and how you handle errors. In this lesson, you'll learn how to redirect these streams to files and between commands.

## 🎯 Learning Objectives

- Understand what standard input (stdin), standard output (stdout), and standard error (stderr) are
- Redirect output and error streams to files
- Combine and separate output and error streams
- Practice these concepts in the `PLAYGROUND/environment/` directory

## 📚 Lesson Content

### What are Standard Streams?

- **Standard Input (stdin, 0):** Where a command reads input (usually the keyboard)
- **Standard Output (stdout, 1):** Where a command writes output (usually the screen)
- **Standard Error (stderr, 2):** Where a command writes error messages (usually the screen)

---

### Redirecting Streams

You can redirect these streams to files or between commands:

**Syntax:**

```bash
command 1> output.txt    # Redirect stdout to file
command 2> error.txt     # Redirect stderr to file
command > out.txt 2>&1   # Redirect both stdout and stderr to the same file
command < input.txt      # Use file as input (stdin)
```

**Example:**

```bash
ls existingfile.txt missingfile.txt 1> ls_output.txt 2> ls_error.txt
```

---

## 💡 Guided Examples

1. In the `PLAYGROUND/environment/` directory, run a command that produces both output and an error:
   ```bash
   ls existingfile.txt missingfile.txt 1> ls_output.txt 2> ls_error.txt
   ```
2. View the contents of `ls_output.txt` and `ls_error.txt` to see the difference between standard output and error.
3. Redirect both output and error to the same file:
   ```bash
   ls existingfile.txt missingfile.txt > ls_both.txt 2>&1
   ```

---

## 🧪 Practice Exercises

1. **Output Redirection:**
   - Run a command that produces output and redirect it to `stdout_test.txt` in `PLAYGROUND/environment/`.
2. **Error Redirection:**
   - Run a command that produces an error and redirect it to `stderr_test.txt` in `PLAYGROUND/environment/`.
3. **Combined Redirection:**
   - Run a command that produces both output and error, and redirect both to `combined_test.txt` in `PLAYGROUND/environment/`.
4. **Pipe and Filter Practice:**
   - Use `grep` to search for a pattern in a file (e.g., search for "test" in `stdout_test.txt`).
   - Redirect the matching lines to `grep_results.txt` and send the non-matching lines to `/dev/null`.
   - **Example:**
     ```bash
     grep "test" PLAYGROUND/environment/stdout_test.txt > PLAYGROUND/environment/grep_results.txt 2> /dev/null
     ```
   - Alternatively, to explicitly discard non-matching lines, you can use:
     ```bash
     grep "test" PLAYGROUND/environment/stdout_test.txt > PLAYGROUND/environment/grep_results.txt || true
     ```

---

## ✅ Progress Check (Optional)

After completing the exercises, create a marker file named `.stdio_check` in `PLAYGROUND/environment/`:

```bash
touch PLAYGROUND/environment/.stdio_check
```

This helps automated scripts verify your progress in this lesson.

_Next up: Learn about process management in Lesson 108!_
