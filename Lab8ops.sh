#!/bin/bash
#Lets create a script that would work like a DDOS attack by using a while loop
#In this script we want to contiune to ping our personal pc in a infitine while loop
#Somebody that had a control of a bot net could set up this script on thousands of computer and ping sites till they are overloaded and crash
# To End the loop try pressing control z or control c
# Stretch Goal:
# Can you do this with an until loop to have it execute a specfic number of times?
#!/bin/bash
# Ping a specific number of times using an until loop (educational use only)

read -p "Enter your personal PC's IP address or hostname: " target
read -p "Enter number of pings to send: " limit

count=0
until [ "$count" -ge "$limit" ]; do
    ping -c 1 "$target"
    ((count++))
done

echo "Finished sending $limit pings to $target."
