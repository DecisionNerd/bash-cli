# 204. Networking & Security

Securely connect to remote systems, transfer files, and diagnose network issues.

## SSH and SCP

```bash
ssh user@host
scp file.txt user@host:/path/
```

## Port Forwarding

```bash
ssh -L 8080:localhost:80 user@host
```

## Network Diagnostics

```bash
traceroute example.com
mtr example.com
dig example.com
```
