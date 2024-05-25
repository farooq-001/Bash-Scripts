#!/bin/bash

# Install figlet and lolcat
sudo apt install jp2a -Y
sudo apt install figlet lolcat -Ymv 
wget https://t3.ftcdn.net/jpg/05/00/93/20/360_F_500932055_cxYNf3ph03cHWl6r2zRRVMLhF8GqQeeC.jpg
mv 360_F_500932055_cxYNf3ph03cHWl6r2zRRVMLhF8GqQeeC.jpg logo.png
# Add banner commands to ~/.bashrc
cat << EOF >> ~/.bashrc

# Print banner
jp2a logo.png  --color
figlet -f slant -c "Hi Lucifer"  | lolcat
figlet -f digital -c "Well come to cyberworld"  | lolcat

EOF

# Reload ~/.bashrc to apply changes
source ~/.bashrc

# Display a message indicating that the script has completed
echo "Banner setup completed. You can now open a new terminal to see the banners."
