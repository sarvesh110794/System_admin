# Recovering from disk failure in RAID

### Explanations:

[How to replace a failed harddisk in Linux software RAID](https://www.howtoforge.com/tutorial/linux-raid-replace-failed-harddisk/)

1. Stop all the arrays that are running. Make sure the array is not assembled.
2. Replace the hard disk.
3. Reformat the disk to contain exactly the same partition table (check for the start and end sectors)
4. Reassemble the array. (Should start with one disk failed or unsynced)  Look out for the missing U:

```
cse@cseproj153:~> sudo mdadm --stop --scan

cse@cseproj153:~> sudo mdadm --assemble --scan

cse@cseproj153:~> sudo mdadm /dev/md0 --add /dev/sdd1

cse@cseproj153:~> cat /proc/mdstat
```

```
# cat /proc/mdstat
Personalities : [linear] [multipath] [raid0] [raid1] [raid6] [raid5] [raid4] [raid10]
md0 : active raid5 sda1[0] sdf1[5] sde1[3] sdb1[1]                    
      23441557504 blocks super 1.2 level 5, 512k chunk, algorithm 2 [5/4] [UU_UU]
      bitmap: 0/44 pages [0KB], 65536KB chunk  
```

Now add the disk to the array: `sudo mdadm /dev/md0 --add /dev/sdd1`

Rebuilding array and will take arround 10 or more...

Check now: `cat /proc/mdstat`

```
Personalities : [linear] [multipath] [raid0] [raid1] [raid6] [raid5] [raid4] [raid10]
md0 : active raid5 sdd1[6] sda1[0] sdf1[5] sde1[3] sdb1[1]
      23441557504 blocks super 1.2 level 5, 512k chunk, algorithm 2 [5/4] [UU_UU]
      [>....................]  recovery =  1.0% (63241496/5860389376) finish=563.3min speed=171490K/sec
      bitmap: 0/44 pages [0KB], 65536KB chunk
unused devices: <none>
```
In case required to unload the volume group of assembled array (say of stopping the array): `sudo dmsetup remove datastore-datastore`
