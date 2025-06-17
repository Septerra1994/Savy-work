#!/Bin/Bash

# Challenge today is to create a script that list all the devices on the network and ask the user to ping one of the ip address.
# There is a few different ways to list all deivices on your network you could use an arp command or an nmap command.
# We will run the a command that prints all address then ask the user to ping a specific one by entering an ip address.
read -p "Enter your subnet (e.g., 192.168.1.0/24): " SUBNET

# Scan for devices on the network
echo "Scanning the network for active devices on $SUBNET ..."
nmap -sn "$SUBNET" | grep "Nmap scan report for" | awk '{print $5}' > devices.txt

echo "Devices found on the network:"
cat devices.txt

# Prompt user to choose an IP to ping
read -p "Enter the IP address you'd like to ping: " IP

# Validate IP address format
if [[ "$IP" =~ ^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
    echo "Pinging $IP ..."
    ping -c 4 "$IP"
else
    echo "Invalid IP address format."
fi

