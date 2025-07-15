# Advanced Topics

A practical guide for intermediate Linux and Bash CLI users. This reference builds on core skills, introducing more powerful scripting, automation, system management, and integration techniques. Each section includes syntax, options, and practical examples to deepen your command-line expertise.

---

## 201. Advanced Shell Scripting

Enhance your scripts with functions, conditionals, loops, arrays, error handling, and signal management.

### Functions

**Define reusable code blocks.**

```bash
my_func() {
  echo "Hello $1"
}
my_func World
```

### Conditionals and Loops

```bash
if [ -f file.txt ]; then
  echo "File exists"
fi

for i in {1..3}; do
  echo $i
done
```

### Arrays

```bash
arr=(one two three)
echo ${arr[1]} # two
```

### Error Handling

```bash
command || { echo "Failed"; exit 1; }
```

### Trap and Signals

```bash
trap 'echo "Interrupted!"; exit' SIGINT
```

---

## 202. Regular Expressions & Text Processing

Master pattern matching and text manipulation with grep, sed, and awk.

### grep, sed, awk

**Pattern matching and text processing.**

```bash
grep -E 'error|fail' logfile.txt
sed -n '/pattern/p' file.txt
awk '/pattern/ {print $1}' file.txt
```

### Regex Example

```bash
grep -E '^[0-9]{3}-[0-9]{2}-[0-9]{4}$' ssn.txt
```

---

## 203. Process & Job Control

Manage background jobs, process priorities, and persistent tasks.

### Disowning Jobs

```bash
sleep 1000 &
disown
```

### nohup

```bash
nohup long_running_command &
```

### nice/renice

```bash
nice -n 10 command
renice 5 <PID>
```

---

## 204. Networking & Security

Securely connect to remote systems, transfer files, and diagnose network issues.

### SSH and SCP

```bash
ssh user@host
scp file.txt user@host:/path/
```

### Port Forwarding

```bash
ssh -L 8080:localhost:80 user@host
```

### Network Diagnostics

```bash
traceroute example.com
mtr example.com
dig example.com
```

---

## 205. Advanced Package Management

Go beyond basics: build from source, manage package states, and search repositories.

### Build from Source

```bash
./configure && make && sudo make install
```

### apt-cache, apt-mark

```bash
apt-cache search nginx
apt-mark hold package
```

---

## 206. System Monitoring & Performance

Monitor system resources, disk usage, and logs for performance and troubleshooting.

### top/htop

```bash
top
htop
```

### iotop

```bash
iotop
```

### ncdu

```bash
ncdu /
```

### journalctl

```bash
journalctl -xe
```

---

## 207. Filesystem & Storage Management

Work with LVM, RAID, fstab, and disk imaging for advanced storage solutions.

### LVM Basics

```bash
lvcreate -L 10G -n lvname vgname
```

### RAID Management

```bash
mdadm --create /dev/md0 --level=1 --raid-devices=2 /dev/sda1 /dev/sdb1
```

### fstab

```bash
echo '/dev/sda1 /mnt ext4 defaults 0 2' | sudo tee -a /etc/fstab
```

### Disk Imaging

```bash
dd if=/dev/sda of=/backup/sda.img bs=4M
```

---

## 208. Automation & Scheduling

Automate tasks with at, batch, and systemd timers.

### at and batch

```bash
echo "backup.sh" | at 02:00
```

### systemd timers

```bash
systemctl list-timers
```

---

## 209. Advanced User & Group Management

Control permissions and access with sudoers and ACLs.

### Sudoers

```bash
sudo visudo
```

### ACLs

```bash
setfacl -m u:username:rwx file.txt
getfacl file.txt
```

---

## 210. Environment Customization

Personalize your shell environment for productivity and clarity.

### Prompt Customization

```bash
export PS1="\u@\h:\w$ "
```

### Aliases

```bash
alias ll='ls -alF'
```

### Profile Files

- `~/.bashrc`, `~/.profile`, `~/.bash_profile`

---

## 211. Version Control Integration

Integrate version control and patch management into your workflow.

### git basics

```bash
git clone https://github.com/user/repo.git
git status
git diff
git log
```

### diff/patch

```bash
diff file1 file2
patch < changes.patch
```

---

## 212. Containers & Virtualization

Leverage containers and virtual machines for development and deployment.

### Docker

```bash
docker run -it ubuntu bash
docker ps
docker build -t myimage .
```

### LXC/LXD

```bash
lxc launch images:ubuntu/22.04 mycontainer
lxc exec mycontainer -- bash
```

### Vagrant

```bash
vagrant init ubuntu/bionic64
vagrant up
```
