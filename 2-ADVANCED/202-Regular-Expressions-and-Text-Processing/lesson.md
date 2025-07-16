# 202. Regular Expressions & Text Processing

## Learning Objectives

- Use grep, sed, and awk for text processing
- Understand and apply regular expressions
- Extract and manipulate data from text files

## Introduction

Regular expressions and text processing tools are essential for searching, extracting, and transforming data in files. This lesson covers the basics of grep, sed, awk, and regex usage.

---

## 1. grep, sed, awk

These tools help you find and process text patterns.

**Examples:**

```bash
grep -E 'error|fail' logfile.txt
sed -n '/pattern/p' file.txt
awk '/pattern/ {print $1}' file.txt
```

---

## 2. Regular Expressions

Regular expressions (regex) define search patterns for text.

**Example:**

```bash
grep -E '^[0-9]{3}-[0-9]{2}-[0-9]{4}$' ssn.txt
```

---

## Practical Exercise

1. Create a text file with several lines, some containing numbers and patterns.
2. Use grep to find lines with a specific word.
3. Use sed to print lines matching a pattern.
4. Use awk to print the first field of lines matching a pattern.
5. Write a regex to match a phone number or SSN format.

---

## Next Steps

- Practice combining these tools in pipelines.
- Explore advanced regex features in the next lessons.
