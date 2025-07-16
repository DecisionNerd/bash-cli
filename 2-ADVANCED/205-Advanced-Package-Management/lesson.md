# 205. Advanced Package Management

## Learning Objectives

- Build software from source
- Search and manage packages using apt-cache and apt-mark
- Understand advanced package management concepts

## Introduction

Advanced package management allows you to install software from source, manage package states, and search repositories efficiently. This lesson covers building from source and using apt-cache and apt-mark.

---

## 1. Build from Source

Compile and install software manually when packages are not available.

**Example:**

```bash
./configure && make && sudo make install
```

---

## 2. apt-cache, apt-mark

Search for packages and manage their installation state.

**Examples:**

```bash
apt-cache search nginx
apt-mark hold package
```

---

## Practical Exercise

1. Download a simple open-source project and build it from source (if possible on your system).
2. Use `apt-cache` to search for a package.
3. Use `apt-mark` to hold a package and verify its state.

---

## Next Steps

- Explore more advanced package management tools and options in the next lesson.
