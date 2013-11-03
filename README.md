CPU-Usage
=========

Throttle the CPU usage of a specific OSX Process

For the last two years, I have noticed a trend. From time to time Apple will release updates to its OSX Server environment, sometimes these updates go smoothly however the bulk of the time it causes several nasty side affects one of them being high CPU usage among rogue processes. One such was covered here the HWMOD bug which caused extremely high CPU usage. Sometimes these are easy to fix while other times these cause your system to crash and burn due to high CPU usage. On the flip side of this coin I have had several experiences with services on the OSX Platform that when they are corrupt or start having issues that specific service will shoot up over 100% CPU while struggling to complete a specific task. Examples include but are not limited to a corrupt open directory master trying to replicate will cause the password service to shoot up over 100% CPU and poor PHP programming can cause the HTTP service to do the same.

I needed a way for my server to notify me by email every time there was a potential problem which results in high CPU usage so that I could mitigate that issue quickly. The server monitor and server admin apps do not allow you to monitor CPU usage and Activity monitor is great as long as you are willing to stand in front of your terminal screen all day. I decided to write a script that would alert me when specific processes started running wild.

Usage
=========
Run the script using elevated permissions and chmod the script to 755 or higher.

Reference
=========
Check out the original blog post for questions and answers or for more information.

http://www.jonbrown.org/10-7-server-throttle-high-cpu-usage-script/
