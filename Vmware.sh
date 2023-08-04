#!/bin/bash
echo "Select an option:"
echo "1. Vmware-services package download"
echo "2. Install Vmware-services package"

read -p "Enter your choice (1 or 2): " choice

if [[ $choice == 1 ]]; then
    # Option 1: Vmware-services package download
 
    echo "Go to the website below and download the package:"
    echo "https://www.vmware.com/products/workstation-pro/workstation-pro-evaluation.html"
    echo "check the Vmware version "17.0.2-21581411.x86_64" or not 
    echo  "once complete the 1st step you can run 2nd step"

elif [[ $choice == 2 ]]; then
    # Option 2: Install Vmware-services
    
    sudo chmod -R 777 VMware-Workstation-Full-17.0.2-21581411.x86_64.bundle
    sudo apt update
    sudo apt install -y build-essential
    sudo bash VMware-Workstation-Full-17.0.2-21581411.x86_64.bundle
    echo " if this step is failed to run then check wich version you have downloaded"
    sudo vmware-modconfig --console --install-all

else
    echo "Invalid choice. Exiting..."
    exit 1
fi
