#!/bin/bash

# Define the list of nodes and their IP addresses
nodes=("node1" "node2" "node3" )
ip_addresses=("xxxxxx" "xxxxxx " "xxxxxx" )

# Define your SSH password
password="xxxxxx"

# Loop through the nodes and gather system resource information
for ((i=0; i<${#nodes[@]}; i++)); do
    node=${nodes[i]}
    ip=${ip_addresses[i]}

    echo "System Resources for $node ($ip):"

    # Use SSH to run system resource commands on the remote node
    ssh $ip "hostname; uptime; free -m; df -h"

    echo -e "\n-----------------------------------------\n"
done
