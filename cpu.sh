#!/bin/bash
 
processToWatch="PasswordService" # in my case I need to watch convert
emailAddress="me@me.com" # this is my main emailaddress
triggerValue=10 # if the CPU use is above 50% send an email. DO NOT USE a DOT or COMMA!
tempFileName=cpulog # some name of the temp file for the ps, grep data
 
ps auxww | grep "$processToWatch" | grep -v grep > /Scripts/Logs/$tempFileName
export LINE
(
read LINE
while [ -n "$LINE" ]
do
set $LINE
read LINE
if [ $(echo "$3" | sed -e 's/\.[0-9]*//g') -gt $triggerValue ]; then
sudo kill -9 $2;
mail -s "CPU message alert for: $processToWatch" $emailAddress <<-END
This is to inform you that the following process: $processToWatch with PID (Process ID) $2 is now using more than your preset $triggerValue value.
 
Process: $processToWatch is using: $3 of CPU
The command used is: $11
END
fi
done
)< /Scripts/Logs/$tempFileName