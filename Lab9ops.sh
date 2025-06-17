#!/bin/bash
# Lets create a while loop than runs a conditinal statment
#Ask the user for an input if they choose:
# 1 then echo hello world
# 2 ping a website or ip address
# 3 run ifconfig
# else echo invalid entry
#!/bin/bash

# Simple menu loop script

while true; do
    echo -e "\nChoose an option:"
    echo "1 - Say Hello"
    echo "2 - Ping a website or IP"
    echo "3 - Show network config"
    echo "4 - Exit"
    read -p "Enter your choice: " choice

    if [ "$choice" == "1" ]; then
        echo "Hello World"
    elif [ "$choice" == "2" ]; then
        read -p "Enter address to ping: " target
        ping -c 4 "$target"
    elif [ "$choice" == "3" ]; then
        ifconfig
    elif [ "$choice" == "4" ]; then
        echo "Goodbye!"
        break
    else
        echo "Invalid option, try again."
    fi
done
