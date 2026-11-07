


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


