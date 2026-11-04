Linux Permissions — DevOps Notes

1. What are Linux permissions?

Linux permissions control who can read, change or execute files and directories.

They help keep a Linux system secure.

2. The three permission types

* r (read) — View a file’s contents.
* w (write) — Modify a file’s contents.
* x (execute) — Run a file as a program or script.

For directories, these permissions work slightly differently: read lets you list names, write helps you create or remove entries, and execute lets you access items inside.

3. Users, groups and others

Linux permissions apply to three categories:

* User (owner) — The person who owns the file.
* Group — Users belonging to the file’s assigned group.
* Others — Everyone else.

4. Checking permissions

ls -l

Example:

-rwxr-xr-- 1 ubuntu developers 120 script.sh

Breaking it down:

* - — Regular file.
* rwx — Owner can read, write and execute.
* r-x — Group can read and execute.
* r-- — Others can only read.

5. chmod — Change permissions

chmod changes file permissions.

chmod 755 script.sh
chmod 644 notes.txt
chmod 600 private.txt

Permission numbers:

* 4 = Read
* 2 = Write
* 1 = Execute

Common combinations:

Number	Meaning
7	Read, write, execute
6	Read, write
5	Read, execute
4	Read only
0	No permissions

Example: 755 gives the owner full permissions, while the group and others can read and execute.

6. chown — Change ownership

chown changes who owns a file.

sudo chown ubuntu notes.txt

Change both owner and group:

sudo chown ubuntu:developers project.txt

The first name is the user; the second is the group.

7. Users and groups

Useful commands:

whoami
id
groups
sudo usermod -aG developers testuser

* whoami — Shows your current username.
* id — Shows your user ID and group IDs.
* groups — Shows your group memberships.
* usermod -aG — Adds a user to a supplementary group without replacing existing supplementary groups.

8. sudo — Administrator privileges

sudo allows an authorised user to run a command with elevated privileges, usually as root.

Example:

sudo apt update

Only use sudo when necessary.

9. Running executable scripts

chmod +x script.sh
./script.sh

* chmod +x adds execute permission.
* ./ tells the shell to run a file from the current directory.

10. What I learned

Through practising Linux permissions, I learned:

* How Linux controls access to files and directories.
* How to read permission strings using ls -l.
* How to change permissions using chmod.
* How to change ownership using chown.
* How users and groups work.
* Why permissions matter for Linux security and DevOps.

Key takeaway: Understanding permissions is important when managing Linux serv
