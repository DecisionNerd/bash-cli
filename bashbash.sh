#!/bin/bash

# Create directories
mkdir -p PLAYGROUND/navigation/cd/cd/hidden
mkdir -p PLAYGROUND/files/file/archive
mkdir -p PLAYGROUND/permissions/users/user1
mkdir -p PLAYGROUND/permissions/users/user2
mkdir -p PLAYGROUND/search/grep/grepme
mkdir -p PLAYGROUND/processes/jobs/job1
mkdir -p PLAYGROUND/archives/tarball
mkdir -p PLAYGROUND/networking/ssh
mkdir -p PLAYGROUND/scripts/script
mkdir -p PLAYGROUND/git/repo/src
mkdir -p PLAYGROUND/git/repo/docs
mkdir -p PLAYGROUND/monitoring/logs
mkdir -p PLAYGROUND/automation/timers
mkdir -p PLAYGROUND/users/user1
mkdir -p PLAYGROUND/users/user2
mkdir -p PLAYGROUND/environment

# Create files
touch PLAYGROUND/navigation/ls.txt
touch PLAYGROUND/navigation/pwd.txt
touch PLAYGROUND/navigation/cd/cd.txt
touch PLAYGROUND/navigation/cd/notes.txt
touch PLAYGROUND/navigation/cd/cd/notes.txt
touch PLAYGROUND/navigation/cd/cd/hidden/.hiddenfile

touch PLAYGROUND/files/file.txt
touch PLAYGROUND/files/file.md
touch PLAYGROUND/files/file/file.txt
touch PLAYGROUND/files/file/archive.tar.gz
touch PLAYGROUND/files/file/archive/archive.txt
touch PLAYGROUND/files/file/archive/archive.tar.gz

touch PLAYGROUND/permissions/chmod.sh
touch PLAYGROUND/permissions/chown.sh
touch PLAYGROUND/permissions/users/user1/file.txt
touch PLAYGROUND/permissions/users/user2/file.txt

touch PLAYGROUND/search/findme.txt
touch PLAYGROUND/search/findme.md
touch PLAYGROUND/search/grep/grepme.txt
touch PLAYGROUND/search/grep/grepme.log
touch PLAYGROUND/search/grep/grepme/grepme.txt

touch PLAYGROUND/processes/ps.log
touch PLAYGROUND/processes/jobs/job1.sh
touch PLAYGROUND/processes/jobs/job2.sh
touch PLAYGROUND/processes/jobs/job1/job1.sh

touch PLAYGROUND/archives/tarball.tar
touch PLAYGROUND/archives/zipped.7z
touch PLAYGROUND/archives/tarball/tarball.tar
touch PLAYGROUND/archives/tarball/zipped.7z

touch PLAYGROUND/networking/ifconfig.txt
touch PLAYGROUND/networking/ip.txt
touch PLAYGROUND/networking/netstat.log
touch PLAYGROUND/networking/ssh/ssh_config
touch PLAYGROUND/networking/ssh/known_hosts

touch PLAYGROUND/scripts/script.sh
touch PLAYGROUND/scripts/script.py
touch PLAYGROUND/scripts/script/script.sh
touch PLAYGROUND/scripts/script/script.py

touch PLAYGROUND/git/repo/README.md
touch PLAYGROUND/git/repo/.gitignore
touch PLAYGROUND/git/repo/src/main.py
touch PLAYGROUND/git/repo/src/main.sh
touch PLAYGROUND/git/repo/docs/README.md
touch PLAYGROUND/git/repo.txt
touch PLAYGROUND/git/repo.md

touch PLAYGROUND/monitoring/top.log
touch PLAYGROUND/monitoring/htop.log
touch PLAYGROUND/monitoring/ncdu.txt
touch PLAYGROUND/monitoring/logs/journalctl.log
touch PLAYGROUND/monitoring/logs/syslog

touch PLAYGROUND/automation/atjob.txt
touch PLAYGROUND/automation/batchjob.txt
touch PLAYGROUND/automation/timers/timer1.txt
touch PLAYGROUND/automation/timers/timer2.txt

touch PLAYGROUND/users/sudoers
touch PLAYGROUND/users/acl.txt
touch PLAYGROUND/users/user1/.bashrc
touch PLAYGROUND/users/user1/.profile
touch PLAYGROUND/users/user2/.bashrc
touch PLAYGROUND/users/user2/.profile

touch PLAYGROUND/environment/.bashrc
touch PLAYGROUND/environment/.profile
touch PLAYGROUND/environment/.env

touch PLAYGROUND/README.txt
touch PLAYGROUND/README.md

echo "File structure created successfully!"