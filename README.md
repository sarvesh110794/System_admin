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
```
$sudo rsync -arvh --sparse --info=progress2 sparse_file <uname>@<IP>:/home/sarvesh/Documents/
```
