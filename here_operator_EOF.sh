# A script for taking the tape backup by using the tar command and the here operator
#Author:Morrow
#Modified:

#!/bin/bash
# Using tar utility for archiving home folder on tape. You can make changes to meet your backup destination need.

tar -cvf /dev/st0 /home/student 2>/dev/null
# store status of tar operation in variable status
[ $? -eq 0 ] && status="Success" || status="Failed"

# Send email to administrator
mail -s 'Backup status' morrow@gmail.com << End_Of_Message
The backup job finished.
End date: $(date)
Status : $status
End_Of_Message
