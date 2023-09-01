#!/bin/bash

# Define the list of nodes and their IP addresses
nodes=("node1" "node2" "node3")
ip_addresses=("XXXXXX" "XXXXXX" "XXXXXX")

# Define your SSH password (consider using SSH key authentication for security)
password="XXXXXX"

# Function to gather system resource information for a node
get_system_resources() {
    local node=$1
    local ip=$2

    echo "System Resources for $node ($ip):"

    # Use SSH to run system resource commands on the remote node
    sshpass -p "$password" ssh "$ip" "hostname; uptime; free -m | awk 'NR==2 {print \"Total: \"\$2/1024\" GB, Used: \"\$3/1024\" GB, Free: \"\$4/1024\" GB, Shared: \"\$5/1024\" GB\"}'; df -h; lscpu | grep 'Core(s) per socket'"

    echo -e "\n-----------------------------------------\n"
}

# Loop through the nodes and gather system resource information
for ((i=0; i<${#nodes[@]}; i++)); do
    node="${nodes[i]}"
    ip="${ip_addresses[i]}"
    get_system_resources "$node" "$ip"
done
