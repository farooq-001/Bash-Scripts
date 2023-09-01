#!/bin/bash

# Define the list of nodes and their IP addresses
nodes=("node1" "node2" "node3")
ip_addresses=("XXXXXXXX" "XXXXXXXX" "XXXXXXXX")

# Define your SSH password (consider using SSH key authentication for security)
password="XXXXXXXX"

# Function to gather system resource information for a node
get_system_resources() {
    local node=$1
    local ip=$2

    echo "System Resources for $node ($ip):"

    # Use SSH to run system resource commands on the remote node
    sshpass -p "$password" ssh "$ip" "hostname; uptime; free -m; df -h"

    echo -e "\n-----------------------------------------\n"
}

# Loop through the nodes and gather system resource information
for ((i=0; i<${#nodes[@]}; i++)); do
    node="${nodes[i]}"
    ip="${ip_addresses[i]}"
    get_system_resources "$node" "$ip"
done
