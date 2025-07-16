# 201. Advanced Shell Scripting

Enhance your scripts with functions, conditionals, loops, arrays, error handling, and signal management.

## Functions

**Define reusable code blocks.**

```bash
my_func() {
  echo "Hello $1"
}
my_func World
```

## Conditionals and Loops

```bash
if [ -f file.txt ]; then
  echo "File exists"
fi

for i in {1..3}; do
  echo $i
done
```

## Arrays

```bash
arr=(one two three)
echo ${arr[1]} # two
```

## Error Handling

```bash
command || { echo "Failed"; exit 1; }
```

## Trap and Signals

```bash
trap 'echo "Interrupted!"; exit' SIGINT
```
