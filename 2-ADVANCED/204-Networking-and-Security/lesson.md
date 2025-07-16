# 204. Networking & Security

## Learning Objectives

- Connect to remote systems securely
- Transfer files using SSH and SCP
- Use port forwarding
- Diagnose network issues with common tools

## Introduction

Networking and security skills are essential for system administration and troubleshooting. This lesson covers secure connections, file transfers, port forwarding, and network diagnostics.

---

## 1. SSH and SCP

Use SSH to connect securely to remote systems and SCP to transfer files.

**Examples:**

```bash
ssh user@host
scp file.txt user@host:/path/
```

---

## 2. Port Forwarding

Forward local ports to remote systems for secure access.

**Example:**

```bash
ssh -L 8080:localhost:80 user@host
```

---

## 3. Network Diagnostics

Diagnose network issues with tools like traceroute, mtr, and dig.

**Examples:**

```bash
traceroute example.com
mtr example.com
dig example.com
```

---

## Practical Exercise

1. Use SSH to connect to a test server (or localhost if available).
2. Use SCP to transfer a file to/from a remote system.
3. Set up port forwarding with SSH and verify access to the forwarded port.
4. Run traceroute, mtr, and dig on a domain and interpret the results.

---

## Next Steps

- Explore advanced networking and security tools in the next lesson.
