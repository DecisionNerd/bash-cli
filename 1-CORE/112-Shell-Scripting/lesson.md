# 112. Shell Scripting

## 📝 Summary

Shell scripting allows you to automate tasks, combine commands, and create reusable workflows. In this lesson, you'll learn the basics of writing and running shell scripts, including command substitution and command separators.

## 🎯 Learning Objectives

- Write and run basic shell scripts
- Use command substitution to capture command output
- Use command separators (`;`, `&&`) to chain commands
- Practice scripting in the `PLAYGROUND/scripts/` directory

## 📚 Lesson Content

### Why Learn Shell Scripting?

Shell scripts automate repetitive tasks, making you more efficient and enabling complex workflows.

---

### Command Substitution

Command substitution lets you use the output of one command as input to another.

**Syntax:**

```bash
result=$(command)
result=`command`
```

**Example:**

```bash
CURRENT_DATE=$(date)
```

---

### Command Separators

Command separators let you run multiple commands in sequence or conditionally.

**Syntax:**

```bash
command1; command2      # Run command2 after command1
command1 && command2    # Run command2 only if command1 succeeds
```

**Examples:**

```bash
echo "Hello"; echo "World"
mkdir newdir && cd newdir
```

---

## 💡 Guided Examples

1. In the `PLAYGROUND/scripts/` directory, create a script called `hello.sh`:
   ```bash
   echo -e '#!/bin/bash\necho "Hello, world!"' > PLAYGROUND/scripts/hello.sh
   chmod +x PLAYGROUND/scripts/hello.sh
   ./PLAYGROUND/scripts/hello.sh
   ```
2. Use command substitution in a script:
   ```bash
   echo -e '#!/bin/bash\nNOW=$(date)\necho "Current date: $NOW"' > PLAYGROUND/scripts/date.sh
   chmod +x PLAYGROUND/scripts/date.sh
   ./PLAYGROUND/scripts/date.sh
   ```
3. Use command separators in a script:
   ```bash
   echo -e '#!/bin/bash\necho "First"; echo "Second"' > PLAYGROUND/scripts/separator.sh
   chmod +x PLAYGROUND/scripts/separator.sh
   ./PLAYGROUND/scripts/separator.sh
   ```

---

## 🧪 Practice Exercises

1. **Hello Script:**
   - Write a script called `practice_hello.sh` in `PLAYGROUND/scripts/` that prints "Hello from script!".
2. **Date Script:**
   - Write a script called `practice_date.sh` that prints the current date using command substitution.
3. **Separator Script:**
   - Write a script called `practice_sep.sh` that prints two lines using a command separator.

---

## ✅ Progress Check (Optional)

After completing the exercises, create a marker file named `.script_check` in `PLAYGROUND/scripts/`:

```bash
touch PLAYGROUND/scripts/.script_check
```

This helps automated scripts verify your progress in this lesson.

_Next up: Learn about help resources in Lesson 113!_
