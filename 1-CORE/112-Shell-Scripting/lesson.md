# 112. Shell Scripting

Automate tasks and combine commands using shell scripting basics.

## Command substitution

**Syntax:**

```bash
result=$(command)
result=`command`
```

**Example:**

```bash
CURRENT_DATE=$(date)
```

## Command separators

**Syntax:**

```bash
command1; command2
command1 && command2
```

**Examples:**

```bash
echo "Hello"; echo "World"
mkdir newdir && cd newdir
```
