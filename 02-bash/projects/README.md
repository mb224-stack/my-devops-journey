


# Bash Scripting Projects

## About This Folder

This folder contains practical Bash scripting projects I completed during my CoderCo DevOps bootcamp.

These projects helped me develop my Linux automation, scripting and problem-solving skills.

## Project 1: File Backup Script

**File:** `backup.sh`

### Purpose

This script automates copying text files into a backup directory.

### How It Works

1. Creates a directory called `Backup` if it doesn't already exist.
2. Finds `.txt` files in the current directory.
3. Copies those files into the `Backup` directory.

### Commands Used

- `mkdir -p` — Creates a directory if needed.
- `cp` — Copies files.
- `*.txt` — Matches filenames ending in `.txt`.

### How to Run

From a directory containing the script and some `.txt` files:

```bash
bash backup.sh
```

### What I Learned

- How to automate repetitive file management tasks.
- How to use wildcards to work with multiple files.
- How to organise files using Bash scripts.

### Future Improvements

- Add timestamps to backups.
- Handle missing files.
- Add error checking.
- Support configurable backup locations.











## Project 2: File Checker

**File:** `check_hero.sh`

### Purpose
This script checks whether a file called `hero.txt` exists.

### How It Works
1. Uses an if/else statement to check for a file.
2. If the file exists, displays "Hero found!"
3. Otherwise, displays "Hero missing!"

### Commands and Concepts
- `if/else` — Makes decisions based on conditions.
- `-f` — Checks whether a regular file exists.
- `echo` — Displays a message.
- `fi` — Ends the if statement.

### How to Run
Run the script from the directory you want to check:

```bash
bash check_hero.sh
```

### What I Learned
- How to use conditions in Bash.
- How to check whether files exist.
- How to make scripts respond to different situations.



## Project 3: Directory Monitoring Script

**File:** `monitor.sh`

### Purpose

This Bash script monitors a directory for file changes.

It detects when files are:
- Created
- Modified
- Deleted

This is useful in DevOps because monitoring helps identify changes happening on servers.

### How It Works

1. Selects the directory to monitor.
2. Creates temporary files using `mktemp`.
3. Uses `find` to identify files.
4. Uses `sha256sum` to help detect modifications.
5. Uses a `while` loop to check every 5 seconds.
6. Uses `awk` to compare previous and current file information.
7. Records changes in `changes.log`.
8. Uses `trap` to clean up temporary files when the script exits.

### Commands and Concepts Learned

- `while true` — Repeats continuously.
- `sleep 5` — Waits 5 seconds between checks.
- `find` — Searches for files.
- `sha256sum` — Calculates file hashes.
- `awk` — Processes and compares data.
- `tee` — Displays output and writes it to a file.
- `mktemp` — Creates temporary files.
- `trap` — Runs cleanup commands when the script exits.
- `date` — Provides timestamps.

### How to Run

From the directory you want to monitor:

```bash
bash /path/to/monitor.sh
```

Press `Ctrl + C` to stop monitoring.

### What I Learned

This Bash Battle Arena challenge helped me understand:

1. How to automate file monitoring.
2. How to use loops for repeated checks.
3. How to detect file changes using hashes.
4. How to write information to log files.
5. How to combine multiple Linux commands in one script.

### Future Improvements

- Allow users to choose a monitoring directory.
- Add better error handling.
- Send alerts when important files change.
- Make the monitoring interval configurable.

