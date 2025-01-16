***shell scripting***

#Always start by writing the metadata

#!/bin/bash
#Author: Lydia Taniform
#Date: 01/13/2025
#Description: This script is used to display the system information
##########################################################################

#set -x #debug mode
df -h

free -g

top

nproc
##########################################################################

#ps -ef command
#ps: This stands for "process status" and is used to display information about active processes.
#-e: This option tells ps to show information about every process running on the system.
#-f: This option tells ps to show more detailed information about each process, including the command line that started it.

ps -ef


#ps -ef | grep ae amazon
#This command will display information about all processes that match the specified process name.

ps -ef | grep "amazon"

#This command will will print only the echo say "Today is "
#because date is a default command that will only sent the information to stdout
# or stderr or stdin so | will not work
date | echo "Today is "
# The command will print only the echo say "Today is "

#This command will print only what is requesting and id
 ps -ef | grep "amazon" | awk -F " " '{print $1, $2}'
 eg my name is lydia taniform
 # The command will print out (my name) since its 1 and 2

 grep name 
 #(filename) will print out the name in the file

#This command will print only what is requesting and id. Eg 
#if the name is (my name is lydia) the result will be 
#(is) because its 3. so the awk will search for the column
 grep name nodeHealth.sh | awk -F" " '{print $3}'

#It is a best practice to always add set -e so that the script will exit where there is an error 
set -e #exit the script when there is an error

set -o #pipefail

set -x #debug mode




#conclusion
#########################################################################################
# Author: Lydia
# Date: 1/13/2025
#
# This script outputs the node health
#
# Version: vi
#
# ########################

set -x #debug mood

set -e #exit the script when there is an error. where there is | the set -e only looks at the last command
#so you must include set -o pipefail for error handling.

set -o #pipefail

df -h #disk space in human readable format



free -g #output the system memory in gigabytes



nproc #output the cpu cores or proccessor of the machine system

ps -ef | grep amazon | awk -F" " '{print $4}' #grep filters running processes in the file ps=running processes. 

#############################################################################################
#Tasks of devops engineers
#how to access the log file to find out the error is in linus enviroment
 curl # and provide the url of the log file. will output the log filesimilar to requests in python
 curl  https://www.google.com.log | error #will output the error in the log file
 curl  XXXXXXXXXXXXXXXXXXXXXXXXXX | grep "error" #will output the error in the log file.
 #Now it depends where your log file is located. It can be github, AWS S3 or any other location.