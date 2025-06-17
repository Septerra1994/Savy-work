#!/bin/bash
# Create a script that you think you would use in a daily job routine No right or Wrong anwsers here
# You could ping all the devices in your network?
# Run a script to reset your ip address?
# Create a script that does some math? 
#!/bin/bash

# Daily Network Health Check Script

# Define subnet to scan
SUBNET="192.168.1"
START=1
END=20

# Log file
LOG_FILE="/var/log/network_check.log"
DATE=$(date '+%Y-%m-%d %H:%M:%S')

# Reset network interface if needed
RESET_INTERFACE="eth0"

# Function to log output
log() {
echo "[$DATE] $1" | tee -a "$LOG_FILE"
}

# Start logging
log "Starting network scan..."

# Ping devices
online_count=0
offline_count=0

for i in $(seq $START $END); do
IP="$SUBNET.$i"
if ping -c 1 -W 1 $IP &> /dev/null; then
log "✅ $IP is online"
((online_count++))
else
log "❌ $IP is offline"
((offline_count++))
fi
done

# Summary
log "Scan complete. Online: $online_count, Offline: $offline_count"

# Optional: Reset network interface if all devices are offline
if [ "$online_count" -eq 0 ]; then
log "⚠️ All devices appear offline. Restarting network interface $RESET_INTERFACE..."
sudo ip link set "$RESET_INTERFACE" down
sleep 3
sudo ip link set "$RESET_INTERFACE" up
log "🔁 Network interface $RESET_INTERFACE restarted."
fi

log "✅ Network check finished."
