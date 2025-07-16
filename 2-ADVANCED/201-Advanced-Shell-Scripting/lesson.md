# 201. Advanced Shell Scripting

## Learning Objectives

- Understand and use functions in shell scripts
- Implement conditionals and loops
- Work with arrays
- Apply error handling techniques
- Use traps and signals for script control

## Introduction

Advanced shell scripting allows you to automate complex tasks, handle errors gracefully, and write maintainable code. This lesson covers essential advanced scripting concepts.

---

## 1. Functions

Functions let you define reusable code blocks.

**Example:**

```bash
my_func() {
  echo "Hello $1"
}
my_func World
```

---

## 2. Conditionals and Loops

Use conditionals to make decisions and loops to repeat actions.

**Example:**

```bash
if [ -f file.txt ]; then
  echo "File exists"
fi

for i in {1..3}; do
  echo $i
done
```

---

## 3. Arrays

Arrays store multiple values in a single variable.

**Example:**

```bash
arr=(one two three)
echo ${arr[1]} # two
```

---

## 4. Error Handling

Catch and handle errors to make scripts robust.

**Example:**

```bash
command || { echo "Failed"; exit 1; }
```

---

## 5. Trap and Signals

Use traps to handle signals and clean up before exit.

**Example:**

```bash
trap 'echo "Interrupted!"; exit' SIGINT
```

---

## Practical Exercise

1. Write a script that:
   - Defines a function that prints a custom message
   - Checks if a file exists and prints a message
   - Uses a loop to print numbers 1 to 5
   - Stores three values in an array and prints the second value
   - Handles a command failure with an error message
   - Traps SIGINT and prints a message before exiting
2. Test your script by running it and triggering each feature.

---

## Next Steps

- Try combining these features in a larger script.
- Explore more about shell scripting in the next lessons.
