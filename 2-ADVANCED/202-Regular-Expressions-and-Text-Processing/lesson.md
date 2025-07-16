# 202. Regular Expressions & Text Processing

Master pattern matching and text manipulation with grep, sed, and awk.

## grep, sed, awk

**Pattern matching and text processing.**

```bash
grep -E 'error|fail' logfile.txt
sed -n '/pattern/p' file.txt
awk '/pattern/ {print $1}' file.txt
```

## Regex Example

```bash
grep -E '^[0-9]{3}-[0-9]{2}-[0-9]{4}$' ssn.txt
```
