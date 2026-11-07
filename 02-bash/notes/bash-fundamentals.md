
# Bash Scripting — DevOps Notes

## 1. What is Bash?

Bash is a command-line shell and scripting language.

It allows us to:
- Run Linux commands.
- Automate repetitive tasks.
- Manage files and directories.
- Monitor systems and servers.
- Write scripts that perform multiple tasks.

In DevOps, Bash is useful for automation.

## 2. Creating and Running a Bash Script

A Bash script is a file containing commands.

Example:

```bash
#!/bin/bash
echo "Hello, DevOps!"
```

The first line tells the system to use Bash.

Make the script executable:

```bash
chmod +x hello.sh
```

Run it:

```bash
./hello.sh
```

The `./` tells Linux to run a file from the current directory.

## 3. Variables

Variables store information for later use.

```bash
name="Mamadou"
echo "$name"
```

Important:
- No spaces around `=`.
- `$` retrieves a variable's value.
- Quotes help preserve spaces in values.

## 4. Positional Parameters

Positional parameters allow scripts to accept arguments.

```bash
#!/bin/bash
echo "Hello, $1"
```

Run:

```bash
./greet.sh Mamadou
```

Output:

Hello, Mamadou

- `$0` = Script name.
- `$1` = First argument.
- `$2` = Second argument.
- `$#` = Number of arguments.
- `"$@"` = All arguments, preserved separately.

## 5. Arithmetic Expansion

Bash can perform calculations.

```bash
echo $((5 + 3))
echo $((10 - 4))
echo $((6 * 2))
echo $((10 / 3))
echo $((10 % 3))
```

Operators:
- `+` Addition
- `-` Subtraction
- `*` Multiplication
- `/` Integer division
- `%` Remainder

Using variables:

```bash
a=10
b=5
echo $((a + b))
```

## 6. If, Elif and Else

Conditions allow scripts to make decisions.

```bash
#!/bin/bash

age=18

if [ "$age" -ge 18 ]; then
    echo "Adult"
else
    echo "Under 18"
fi
```

Common comparisons:
- `-eq` Equal
- `-ne` Not equal
- `-gt` Greater than
- `-lt` Less than
- `-ge` Greater than or equal
- `-le` Less than or equal

## 7. User Input

The `read` command accepts input.

```bash
read -r -p "Enter your name: " name
echo "Hello, $name"
```

This makes scripts interactive.

## 8. For Loops

A for loop repeats commands over a list.

```bash
for number in 1 2 3 4 5; do
    echo "$number"
done
```

Useful for processing multiple files.

## 9. While Loops

A while loop repeats while a condition is true.

```bash
count=1

while [ "$count" -le 5 ]; do
    echo "$count"
    ((count++))
done
```

## 10. Break and Continue

`break` stops a loop.

`continue` skips the rest of the current iteration.

```bash
for number in 1 2 3 4 5; do
    if [ "$number" -eq 3 ]; then
        continue
    fi
    echo "$number"
done
```

Output: 1, 2, 4, 5.

## 11. Functions

Functions group commands into reusable blocks.

```bash
greet() {
    echo "Hello, $1"
}

greet "DevOps"
```

Functions make scripts easier to organise and maintain.

## 12. Pipes and Redirection

A pipe sends one command's output to another.

```bash
cat server.log | grep "ERROR"
```

Redirection controls where output goes.

```bash
echo "Hello" > file.txt
echo "Another line" >> file.txt
```

- `|` Passes output to another command.
- `>` Overwrites a file.
- `>>` Appends to a file.
- `2>` Redirects standard error.

Standard streams:
- `0` = stdin (input)
- `1` = stdout (normal output)
- `2` = stderr (error output)

## 13. Environment Variables and PATH

Environment variables store information that programs can inherit.

```bash
echo "$HOME"
echo "$USER"
echo "$PATH"
```

`PATH` contains directories where the shell searches for executable commands.

This allows us to run commands without typing their full paths.

## 14. File Handling

Useful Linux commands:

```bash
touch file.txt
mkdir backups
cp file.txt backups/
mv file.txt newfile.txt
rm newfile.txt
```

Wildcards:

```bash
ls *.txt
```

This matches files ending in `.txt`.

## 15. Permissions

Check permissions:

```bash
ls -l
```

Change permissions:

```bash
chmod 755 script.sh
chmod 600 private.txt
```

Change ownership:

```bash
sudo chown ubuntu:developers project.txt
```

## 16. Text Processing

Search for text:

```bash
grep "ERROR" server.log
```

View the beginning or end of files:

```bash
head server.log
tail server.log
```

Print a specific column:

```bash
awk '{print $2}' data.txt
```

`$2` means the second field in AWK.

## 17. Nested Loops

A nested loop is a loop inside another loop.

```bash
for x in 1 2; do
    for y in A B; do
        echo "$x $y"
    done
done
```

Useful when processing combinations of items.

## 18. Handling Errors

Scripts should check whether commands succeed.

```bash
if [ -f "config.txt" ]; then
    echo "File exists"
else
    echo "File missing"
fi
```

`-f` checks whether a regular file exists.

Exit codes:
- `0` = Success.
- Non-zero = Failure or another status.

Check the previous command's exit code:

```bash
echo "$?"
```

## 19. My Practical Bash Projects

During my Bash scripting module, I completed challenges involving:

- File checking.
- Backing up files.
- Monitoring systems.
- Counting lines in files.
- Working with permissions.
- Backup rotation.
- Automating repetitive tasks.

These projects helped me apply Bash concepts to practical Linux administration problems.

## 20. What I Learned

Bash scripting helped me understand how to automate tasks instead of performing them manually.

The most important concepts I learned were:

1. Variables store information.
2. Conditions make decisions.
3. Loops repeat tasks.
4. Functions reuse code.
5. Pipes and redirection connect commands.
6. Scripts automate Linux operations.
7. Error handling makes automation more reliable.

My next goal is to apply these skills to practical DevOps projects.
