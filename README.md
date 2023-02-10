# Script file:
### Command to change ownership of the file.
```
$sudo chown -c <user_name>:<group_name> <file name>
```
### Create sparse file:
```
$dd if=/dev/zero of=sparse_file bs=1 count=0 seek=512M
``` 
### Copy the sparse file from local to remote server:
-a = archive mode

-v = increase verbosity

-h = output numbers in a human-readable format

-r = recurse into directories

--sparse = turn sequences of nulls into sparse blocks
```
$sudo rsync -arvh --sparse --info=progress2 sparse_file <uname>@<IP>:/home/sarvesh/Documents/
```
---
# Reset user Passwd in ubuntu:
### Boot into recovery mode
* Switch the computer on. Go to the grub menu
* it appears automatically – if not, then hold down the ***shift key*** or ***press Esc*** key until the boot menu appears
* If you are using virtualbox or VMware, ***Please hold down the shift key*** when the logo of Oracle appears.
* select the “Advanced Options for Ubuntu”:

insert image

* you’ll see the option to go to recovery mode:

# Drop to root shell prompt:
# Remount the root with write access
```
mount -rw -o remount /
```
# Reset username or password
```
ls /home
```
```
passwd username
Enter new UNIX password:
Retype new UNIX password:
exit
```
* you’ll be back at the recovery mode menu. Select the normal boot option here
Insert image
