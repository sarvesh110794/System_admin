# Recovering from disk failure in RAID
### Explanations:
1. Stop all the arrays that are running. Make sure the array is not assembled.
2. Replace the hard disk.
3. Reformat the disk to contain exactly the same partition table (check for the start and end sectors)
4. Reassemble the array. (Should start with one disk failed or unsynced)  Look out for the missing U:


> cse@cseproj153:~> sudo mdadm --stop --scan
> cse@cseproj153:~> sudo mdadm --assemble --scan
> cse@cseproj153:~> sudo mdadm /dev/md0 --add /dev/sdd1
> cse@cseproj153:~> cat /proc/mdstat
