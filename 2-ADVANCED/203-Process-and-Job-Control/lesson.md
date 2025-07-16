# 203. Process & Job Control

Manage background jobs, process priorities, and persistent tasks.

## Disowning Jobs

```bash
sleep 1000 &
disown
```

## nohup

```bash
nohup long_running_command &
```

## nice/renice

```bash
nice -n 10 command
renice 5 <PID>
```
