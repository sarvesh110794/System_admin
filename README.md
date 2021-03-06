# Recovering from disk failure in RAID
### Explanations:
1. Stop all the arrays that are running. Make sure the array is not assembled
2. Replace the hard disk.

3. Reformat the disk to contain exactly the same partition table (check for the start and end sectors)
Reassemble the array. (Should start with one disk failed or unsynced)  Look out for the missing U:
