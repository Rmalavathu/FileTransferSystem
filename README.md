# FileTransferSystem
This is a FileTransferSystem between two ubuntu devices on the same network not know the IP addresses

In order to complete this task, we are utlizing SCP (Secure Copy) to transfer files from one computer to another computer. SCP protects data from interception compared to SFTP. To tackle the problem of no IP address used avahi to discover the other device and send the files to other computer. It is free zero configuration networking system that allows us to public local connection to let other devices communicate with each other. 


To make program run hourly,

Must use the command crontab -e then put the following in the bottom of the file. "0 * * * * bash file_transfer.sh"
