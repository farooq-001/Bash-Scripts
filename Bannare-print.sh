#!/bin/bash

# Install figlet and lolcat
sudo apt install jp2a -y
sudo apt install figlet lolcat -y

# Add banner commands to ~/.bashrc
cat << EOF >> ~/.bashrc

# Print banner
jp2a logo.png  --color
figlet -f slant -c "lucifer"  | lolcat
figlet -f digital -c "blusapphire cyberworld"  | lolcat

EOF

# Reload ~/.bashrc to apply changes
source ~/.bashrc

# Display a message indicating that the script has completed
echo "Banner setup completed. You can now open a new terminal to see the banners."
