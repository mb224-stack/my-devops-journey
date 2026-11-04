OverTheWire Bandit — My Linux Learning Journey

Introduction

As part of my DevOps bootcamp with CoderCo, I completed OverTheWire Bandit, a Linux command-line challenge designed to develop practical terminal skills.

I worked through Levels 0–33, learning how to navigate Linux, investigate files, troubleshoot problems and use Git.

This document summarises the key skills I developed.

Levels 0–5: Linux Basics

What I learned:

* Connecting to remote servers using SSH.
* Navigating directories using pwd, ls and cd.
* Reading files using cat.
* Working with hidden files and unusual filenames.
* Using find to locate files.

Useful commands:

ssh username@hostname -p 2220
pwd
ls -la
cd directory
cat filename
find . -type f

Key takeaway: I became more comfortable navigating Linux without a graphical interface.

Levels 6–10: Searching and Processing Data

What I learned:

* Searching for files by ownership, size and permissions.
* Searching text using grep.
* Sorting and filtering data.
* Understanding file types and encodings.

Useful commands:

find / -type f -user username 2>/dev/null
grep "word" filename
sort filename
uniq -c
strings filename
base64 -d filename

Key takeaway: I learned how to narrow down large amounts of information to find what I needed.

Levels 11–15: Encoding, Compression and Networking

What I learned:

* Decoding ROT13 text using tr.
* Working with hexadecimal data using xxd.
* Extracting compressed files with gzip, bzip2 and tar.
* Using nc to communicate with network services.
* Understanding secure connections with OpenSSL.

Useful commands:

tr 'A-Za-z' 'N-ZA-Mn-za-m'
xxd -r data.hex
gzip -d file.gz
bzip2 -d file.bz2
tar -xf archive.tar
nc localhost 30000
openssl s_client -connect localhost:30001

Key takeaway: I learned that data can be stored and transmitted in different formats.

Levels 16–20: Ports, SSH Keys and Permissions

What I learned:

* Investigating open ports.
* Using SSH private keys for authentication.
* Understanding file permissions.
* Comparing files using diff.
* Working with setuid programs.

Useful commands:

nmap -p 31000-32000 localhost
ssh -i private_key username@hostname -p 2220
chmod 600 private_key
diff file1 file2
ls -l

Key takeaway: I developed a better understanding of authentication and Linux security.

Levels 21–25: Automation and Scheduled Tasks

What I learned:

* Investigating scheduled tasks using cron.
* Reading shell scripts to understand their behaviour.
* Understanding temporary directories.
* Using commands such as md5sum.
* Investigating restricted environments.

Useful commands:

ls /etc/cron.d/
cat /etc/cron.d/example
cat script.sh
md5sum filename
mktemp -d

Key takeaway: I learned how automation works on Linux servers and how to investigate scripts written by other people.

Levels 26–30: Git and Restricted Shells

What I learned:

* Working with restricted environments.
* Cloning Git repositories.
* Viewing commit history.
* Investigating branches and tags.
* Finding information stored in Git history.

Useful commands:

git clone repository-url
git log --oneline
git branch -a
git tag
git show HEAD
git checkout branch-name

Key takeaway: I discovered how Git history can reveal information that isn’t visible in the latest version of a project.

Levels 31–33: Git Challenges and Shell Behaviour

What I learned:

* Creating files and committing changes.
* Pushing commits to remote repositories.
* Understanding .gitignore.
* Working with unusual shell behaviour.
* Using environment variables and shell commands to investigate a restricted shell.

Useful commands:

git status
git add filename
git commit -m "Complete challenge"
git push origin main
echo "$0"
echo "$SHELL"
whoami

Key takeaway: I became more confident troubleshooting Git and Linux environments.

Challenges I Faced

Some levels were difficult because the solution wasn’t immediately obvious.

I learned to:

1. Read the challenge instructions carefully.
2. Identify the important clues.
3. Choose commands based on the problem.
4. Investigate error messages instead of guessing.
5. Test possible solutions and learn from mistakes.

Skills Developed

* Linux command-line navigation
* File management and permissions
* Text searching and processing
* SSH and authentication
* Networking fundamentals
* Compression and encoding
* Bash scripting
* Cron jobs and automation
* Git version control
* Troubleshooting and problem-solving

Final Reflection

Completing OverTheWire Bandit was an important milestone in my DevOps journey.

The challenges taught me that understanding why a command works is more valuable than simply memorising it.

I’m now building on these foundations through Bash scripting, Git and Networking as part of my CoderCo DevOps bootcamp.

⸻

Security note: This documentation intentionally excludes passwords, private keys and other sensitive credentials.
