# sys-perf
Bash script for monitoring system performance. (for Linux system/server)
Run this on Linux systems for getting information on the system performance. 

Prints various information like RAM, disk that is used and available, how long the system has been up and the processes running on the system right now that are making most use of RAM. Currently it does so much and working towards adding/improving the code. 

Additionally, you can add the following cronjob to make it run everyday at a particular time.

>$crontab -e <br/>
>0 0 * * * /bin/bash perf.sh 

The above cronjob runs once everyday at 12am. But we need to check if it has run through terminal. 

So further, we can send the output details to our mail as shown below:

>$crontab -e <br/>
>0 0 * * * /bin/bash perf.sh | mail -s <Mail subject> <email_id_of_receipient>


(Will be adding more to this.)
